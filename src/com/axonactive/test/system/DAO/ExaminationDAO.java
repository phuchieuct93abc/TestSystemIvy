package com.axonactive.test.system.DAO;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import org.apache.commons.collections.CollectionUtils;
import org.apache.taglibs.standard.tag.el.core.ForEachTag;

import ch.ivyteam.ivy.environment.Ivy;

import com.axonactive.test.system.converter.ChoiceAnswerConverter;
import com.axonactive.test.system.converter.ExaminationConverter;
import com.axonactive.test.system.converter.QuestionConverter;
import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.entity.ExaminationEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.entity.ResultEntity;
import com.axonactive.test.system.model.ChoiceAnswerModel;
import com.axonactive.test.system.model.ExaminationModel;
import com.axonactive.test.system.model.QuestionModel;
import com.axonactive.test.system.model.ResultModel;
import com.axonactive.test.system.service.PersistenceService;
import com.axonactive.test.system.util.QuestionUtil;

public class ExaminationDAO {

	public static List<ExaminationEntity> findAll() {
		List<ExaminationEntity> entities = PersistenceService.getPersistence()
				.findAll(ExaminationEntity.class);
		return entities;
	}

	public static ExaminationEntity findById(Integer examId) {
		ExaminationEntity entity = PersistenceService.getPersistence().find(
				ExaminationEntity.class, examId);
		List<QuestionModel> questions = new ArrayList<>(entity.getQuestions()
				.size());
		return entity;

	}

	public static void update(ExaminationEntity entity) {

		PersistenceService.getPersistence().merge(entity);

	}

	public static List<ExaminationModel> getAllActiveTest() {
		String strQuery = "Select e from ExaminationEntity e where e.isReadyForTest = True Order By e.time DESC";
		List<ExaminationEntity> listEntity = (List<ExaminationEntity>) PersistenceService
				.getPersistence().createQuery(strQuery).getResultList();
		List<ExaminationModel> listmodel = ExaminationConverter
				.listModel(listEntity);
		int i = 0;
		for (ExaminationModel examinationModel : listmodel) {
			List<ResultModel> rsModel = examinationModel.getResult();
			if (CollectionUtils.isNotEmpty(rsModel)) {
				for (ResultModel resultModel : rsModel) {
					if (resultModel.getUsername().equals(
							Ivy.session().getSessionUserName())) {
						examinationModel.setIsTested(true);
						if (resultModel.getIsPassed()) {
							examinationModel.setIsPassed(true);
						}
						if (resultModel.getScore() != null) {
							examinationModel.setScore(resultModel.getScore());
						}
					}
				}
			}

			listmodel.set(i, examinationModel);
			i++;
		}
		return listmodel;
	}

	public static ResultEntity update(ResultEntity entity) {

		return PersistenceService.getPersistence().merge(entity);
	}

	public static void updateExam(int examId, ExaminationModel examModel,
			Set<Integer> editedQuestionIds) {
		Ivy.log().info("Enter DAO update");
		ExaminationEntity examEntity = PersistenceService.getPersistence()
				.find(ExaminationEntity.class, examId);
		examEntity.setDuration(examModel.getDuration());
		examEntity.setIsReadyForTest(examModel.getIsReadyForTest());
		examEntity.setPassPercentage(examModel.getPassPercentage());
		examEntity.setTime(examModel.getTime());
		examEntity.setTitle(examModel.getTitle());

		Map<Integer, QuestionModel> questinModelMap = new HashMap<>();

		for (QuestionModel questionModel : examModel.getQuestion()) {
			if (questionModel.getId() == null || questionModel.getId() == 0) {
				QuestionEntity questionEntity = QuestionConverter
						.toEntity(questionModel);
				Set<ChoiceAnswerEntity> choiceAnswerEntities;
				choiceAnswerEntities = ChoiceAnswerConverter
						.setEntity(questionModel.getChoiceAnswer());

				for (ChoiceAnswerEntity choiceEntity : choiceAnswerEntities) {
					choiceEntity.setQuestion(questionEntity);
				}

				questionEntity.setChoicesAnswer(choiceAnswerEntities);
				questionEntity.setExamination(examEntity);
				examEntity.getQuestions().add(questionEntity);
			} else {
				questinModelMap.put(questionModel.getId(), questionModel);
			}
		}

		PersistenceService.getPersistence().merge(examEntity);

		for (Integer id : editedQuestionIds) {

			if (!questinModelMap.containsKey(id)) { // question was deletetd
				QuestionEntity deletedQuestion = PersistenceService
						.getPersistence().find(QuestionEntity.class, id);
				PersistenceService.getPersistence().remove(deletedQuestion);
				continue;
			}
			QuestionModel questionModel = questinModelMap.get(id);
			QuestionEntity questionEntity = PersistenceService.getPersistence()
					.find(QuestionEntity.class, questionModel.getId());
			questionEntity.setName(questionModel.getName());

			List<Integer> rightAnswerIndex = QuestionUtil
					.getIndexsOfRightAnswers(questionModel);
			Map<Integer, ChoiceAnswerEntity> choiceAnswerEntitiesMap = new HashMap<Integer, ChoiceAnswerEntity>();

			for (ChoiceAnswerEntity choiceAnswerEntity : questionEntity
					.getChoicesAnswer()) {
				choiceAnswerEntitiesMap.put(choiceAnswerEntity.getId(),
						choiceAnswerEntity);
			}

			List<ChoiceAnswerModel> choiceAnswerModels = questionModel
					.getChoiceAnswer();

			for (int i = 0; i < choiceAnswerModels.size(); i++) {
				ChoiceAnswerModel choiceAnswerModel = choiceAnswerModels.get(i);
				ChoiceAnswerEntity choiceAnswerEntity = choiceAnswerEntitiesMap
						.get(choiceAnswerModel.getId());

				choiceAnswerEntity.setContent(choiceAnswerModel.getContent());
				if (rightAnswerIndex.contains(i)) {
					choiceAnswerEntity.setIsCorrect(true);
				} else {
					choiceAnswerEntity.setIsCorrect(false);
				}
				choiceAnswerEntity.setQuestion(questionEntity);
				PersistenceService.getPersistence().merge(choiceAnswerEntity);

			}
			PersistenceService.getPersistence().merge(questionEntity);

		}

	}
}
