package com.axonactive.test.system.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.builder.EqualsBuilder;

import com.axonactive.test.system.DAO.ResultDAO;
import com.axonactive.test.system.converter.ResultConverter;
import com.axonactive.test.system.entity.ResultEntity;
import com.axonactive.test.system.enumeration.QuestionTypeEnum;
import com.axonactive.test.system.model.ChoiceAnswerModel;
import com.axonactive.test.system.model.ExaminationModel;
import com.axonactive.test.system.model.QuestionModel;
import com.axonactive.test.system.model.ResultModel;
import com.axonactive.test.system.model.StudentAnswerModel;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.query.TaskQuery;

public class ResultService {
	private static final String EXAMINATION_CATEGORY = "Examination";

	public static List<ITask> getTaskByExaminationId(Integer examId) {
		TaskQuery taskQuery = TaskQuery.create().where().currentUserCanWorkOn()
				.and().customVarCharField1().isEqual(String.valueOf(examId));
		return Ivy.wf().getTaskQueryExecutor().getResults(taskQuery);

	}

	public static ResultModel findById(Integer resultId) {
		
		return ResultConverter.toModel(ResultDAO.findById(resultId));

	}
	public static Integer createResult(ResultModel resultModel,Integer examId){
		
		return PersistenceService.getPersistence().merge(ResultConverter.toEntity(resultModel, examId)).getId();
	}

	public static void updateIsPassed(Integer resultId, Boolean isPassed) {

		ResultEntity entity = ResultDAO.findById(resultId);
		entity.setIsPassed(isPassed);
		entity.setIsValidated(true);
		ResultDAO.update(entity);

	}
	public static ResultModel getResult(List<QuestionModel> questions,Integer examId,String username){
		ExaminationModel exam = ExaminationService.findById(examId);
		Integer passPercentage = exam.getPassPercentage();
		int numberCorrectAnswer = 0;
		Boolean isPassed = false;
		for(QuestionModel question : questions){

			List<ChoiceAnswerModel> correctAnswer = question.getChoiceAnswer().stream().filter(item ->item.getIsCorrect()).collect(Collectors.toList());
			List<ChoiceAnswerModel> studentAnswer = new ArrayList<>();
			if(question.getQuestionType().equals(QuestionTypeEnum.singleChoice.getQuestionTypeNumber())){
				studentAnswer.add(question.getStudentAnswer());
				
				
			}
			if(question.getQuestionType().equals(QuestionTypeEnum.multiChoice.getQuestionTypeNumber())){
				studentAnswer.addAll(question.getStudentAnswers());
				
				
			}
			if(question.getQuestionType().equals(QuestionTypeEnum.writing.getQuestionTypeNumber())){
				//Don validate writing answer
				continue;
				
			}
			
			
			
			Boolean isCorrect =CollectionUtils.isEqualCollection(correctAnswer, studentAnswer);
			if(isCorrect){
				numberCorrectAnswer++;
			}
			
			
		}
		if((numberCorrectAnswer * 100) / exam.getQuestion().size() >= passPercentage){
			isPassed = true;		
			
		}
		ResultModel resultModel= new ResultModel();
		resultModel.setIsPassed(isPassed);
		resultModel.setScore(numberCorrectAnswer);
		resultModel.setTakenDate(Calendar.getInstance().getTime());
		resultModel.setUsername(username);
		resultModel.setExam(exam);
		resultModel.setIsValidated(false);
		return resultModel;	
		
		
	}
	private static List<ChoiceAnswerModel> getCorrectAnswer(List<ChoiceAnswerModel> input){
		List<ChoiceAnswerModel> correctAnswers = new ArrayList<>();
		for(ChoiceAnswerModel answer : input){
			if(answer.getIsCorrect()){
				correctAnswers.add(answer);
			}
		}
		return correctAnswers;
	}
	public static List<ResultModel> filterPassResult(List<ResultModel> inputs){
		return inputs.stream().filter(item -> item.getIsPassed()).collect(Collectors.toList());
		
		
	}
}
