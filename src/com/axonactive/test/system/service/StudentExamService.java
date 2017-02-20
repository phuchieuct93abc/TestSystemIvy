package com.axonactive.test.system.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.lang.StringUtils;

import ch.ivyteam.ivy.environment.Ivy;

import com.axonactive.test.system.DAO.ExaminationDAO;
import com.axonactive.test.system.converter.ExaminationConverter;
import com.axonactive.test.system.converter.QuestionConverter;
import com.axonactive.test.system.converter.StudentAnswerConverter;
import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.entity.ExaminationEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.entity.StudentAnswerEntity;
import com.axonactive.test.system.enumeration.QuestionTypeEnum;
import com.axonactive.test.system.model.ChoiceAnswerModel;
import com.axonactive.test.system.model.ExaminationModel;
import com.axonactive.test.system.model.QuestionModel;
import com.axonactive.test.system.model.StudentAnswerModel;

public class StudentExamService {

	public static ExaminationModel findExambyId(Integer examId) {
		int total = 0;
		ExaminationEntity exam = ExaminationDAO.findById(examId);
		Set<QuestionEntity> questions = exam.getQuestions();
		ExaminationModel examModel = ExaminationConverter.toModel(exam);
		total = questions.size();
		examModel.setTotalQuestion(total);
		return examModel;

	}

	public static List<QuestionModel> getStudentAnswer(Integer examId) {
		ExaminationModel exam = ExaminationService.findById(examId);

		List<QuestionModel> questions = new ArrayList<QuestionModel>(
				exam.getQuestion());
		for (QuestionModel question : questions) {

		}
		return null;

	}

	public static boolean checkSingleAnswer(QuestionModel questionModel) {
		return questionModel.getStudentAnswer().getIsCorrect();
	}

	public static boolean checkMultipleAnswers(QuestionModel questionModel) {
		return questionModel.getStudentAnswers().stream()
				.anyMatch(isCorrect -> !isCorrect.getIsCorrect());

	}

	public static Set<QuestionModel> handleStudentSubmitExam(
			ExaminationModel examModel) {
		int examId = examModel.getId();
		String username = Ivy.session().getSessionUserName();
		ExaminationEntity examEntity = ExaminationDAO.findById(examId);
		Set<QuestionModel> questions = examModel.getQuestion();
		Set<QuestionEntity> setquestions = examEntity.getQuestions();
		for (QuestionEntity questionEntity : setquestions) {
			Integer questionid = questionEntity.getId();
			QuestionModel questionModel = questions.stream()
					.filter(item -> item.getId().equals(questionid))
					.findFirst().get();

			handleSingleChoiceQuestion(username, questionEntity, questionModel);
			handleMultiChoiceQuestion(username, questionEntity, questionModel);
			handleWritingAnswer(username, questionEntity, questionModel);

		}
		PersistenceService.getPersistence().merge(examEntity);

		return null;

	}

	private static void handleWritingAnswer(String username,
			QuestionEntity questionEntity, QuestionModel questionModel) {
		if (questionModel.getQuestionType().equals(
				QuestionTypeEnum.writing.getQuestionTypeNumber())) {

			StudentAnswerEntity studentAnswer = new StudentAnswerEntity();
			studentAnswer.setWritingAnswer(questionModel
					.getStudentWritingAnswer());
			studentAnswer.setUsername(username);
			studentAnswer.setQuestion(questionEntity);
			questionEntity.getStudentAnswer().add(studentAnswer);

		}
	}

	private static void handleMultiChoiceQuestion(String username,
			QuestionEntity questionEntity, QuestionModel questionModel) {
		if (questionModel.getQuestionType().equals(
				QuestionTypeEnum.multiChoice.getQuestionTypeNumber())) {

			if (questionModel.getStudentAnswers().size() > 0
					&& questionModel.getStudentAnswers() != null) {
				for (ChoiceAnswerModel choiceAnswer : questionModel
						.getStudentAnswers()) {

					StudentAnswerEntity studentAnswer = new StudentAnswerEntity();
					studentAnswer.setChoiceAnswer(ChoiceAnswerService
							.findEntityById(choiceAnswer.getId()));
					studentAnswer.setUsername(username);
					studentAnswer.setQuestion(questionEntity);
					questionEntity.getStudentAnswer().add(studentAnswer);

				}
			}

		}
	}

	private static void handleSingleChoiceQuestion(String username,
			QuestionEntity questionEntity, QuestionModel questionModel) {
		if (questionModel.getQuestionType().equals(
				QuestionTypeEnum.singleChoice.getQuestionTypeNumber())) {
			StudentAnswerModel studentAnswerModel = new StudentAnswerModel();
			studentAnswerModel.setUsername(username);

			studentAnswerModel
					.setChoiceAnswer(questionModel.getStudentAnswer());
			StudentAnswerEntity studentAnswer = StudentAnswerConverter
					.toEntity(studentAnswerModel);
			if (studentAnswerModel.getChoiceAnswer() != null) {
				studentAnswer.setQuestion(questionEntity);
				ChoiceAnswerEntity choiceAnswerEntity = ChoiceAnswerService
						.findEntityById(studentAnswerModel.getChoiceAnswer()
								.getId());
				choiceAnswerEntity.getStudentAnswers().add(studentAnswer);
				studentAnswer.setChoiceAnswer(choiceAnswerEntity);
				questionEntity.getStudentAnswer().add(studentAnswer);

			}
		}
	}

	public static ExaminationModel findExamreviewbyStudent(Integer examId) {
		int total = 0;
		ExaminationEntity exam = ExaminationDAO.findById(examId);
		Set<QuestionEntity> questions = exam.getQuestions();
		ExaminationModel examModel = ExaminationConverter.toModel(exam);
		List<QuestionModel> questionModels = new ArrayList<>();
		for (QuestionEntity questionEntity : questions) {

			QuestionModel questionModel = QuestionConverter
					.toModel(questionEntity);

			Set<StudentAnswerEntity> liststudentAnswerEntity = questionEntity
					.getStudentAnswer();

			liststudentAnswerEntity
					.stream()
					.filter(studentAnswerEntity -> studentAnswerEntity
							.getUsername().equals(
									Ivy.session().getSessionUserName()))
					.collect(Collectors.toList());

			List<StudentAnswerModel> studentAnswerModelList = StudentAnswerConverter
					.convertSetToListModel(StudentAnswerConverter
							.tosetModel(liststudentAnswerEntity));
			Ivy.log().info("List size" + studentAnswerModelList.size());
			if (questionEntity.getQuestionType() == 1) {
				if (studentAnswerModelList != null
						&& studentAnswerModelList.size() > 0) {
					questionModel.setStudentAnswer(studentAnswerModelList
							.get(0).getChoiceAnswer());
				}

			}
			if (questionEntity.getQuestionType() == 2) {
				if (studentAnswerModelList != null
						&& studentAnswerModelList.size() > 0) {
					List<ChoiceAnswerModel> choiceAnswers = studentAnswerModelList
							.stream().map(item -> item.getChoiceAnswer())
							.collect(Collectors.toList());
					if (choiceAnswers != null && choiceAnswers.size() > 0) {
						questionModel.setStudentAnswers(choiceAnswers);
					}
				}

			}
			if (questionEntity.getQuestionType() == 3) {
				if (studentAnswerModelList != null
						&& studentAnswerModelList.size() > 0) {
					questionModel
							.setStudentWritingAnswer(studentAnswerModelList
									.get(0).getWrtingAnswer());
				}

			}
			questionModels.add(questionModel);

		}
		total = questions.size();
		examModel.setQuestion(new HashSet<QuestionModel>(questionModels));
		examModel.setTotalQuestion(total);

		return examModel;
	}

	public static int calculateStudentAnswer(Set<QuestionModel> questionModels) {
		int countWritingAnswer = 0;
		int countStudentAnswer = 0;
		int countUserAnswer = 0;
		for (QuestionModel questionModel : questionModels) {
			if (questionModel.getQuestionType() == 1) {
				if (questionModel.getStudentAnswer() != null) {
					countStudentAnswer += 1;
				}
			}
			if (questionModel.getQuestionType() == 2) {
				if(questionModel.getStudentAnswers().size()> 0){
					countUserAnswer += 1;
				}				
			}
			if (questionModel.getQuestionType() == 3) {
				if(!questionModel.getStudentWritingAnswer().isEmpty() && questionModel.getStudentWritingAnswer() != null){
					countWritingAnswer += 1;
				}
			}
		}
		return countStudentAnswer + countUserAnswer + countWritingAnswer;
	}

}
