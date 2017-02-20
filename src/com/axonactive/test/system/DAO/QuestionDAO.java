package com.axonactive.test.system.DAO;

import ch.ivyteam.ivy.environment.Ivy;

import com.axonactive.test.system.converter.QuestionConverter;
import com.axonactive.test.system.entity.ExaminationEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.entity.ResultEntity;
import com.axonactive.test.system.model.QuestionModel;
import com.axonactive.test.system.service.PersistenceService;

public class QuestionDAO {

	private static final String PERSISTENCE_NAME = "TestPersistence";

	public static void saveQuestionToExam(QuestionModel questionModel,
			Integer examId) {
//		Ivy.log().info("Get Examination Entity with ID = " + examId);
//
//		ExaminationEntity examinationEntity = PersistenceService
//				.getPersistence().find(ExaminationEntity.class, examId);
//
//		Ivy.log().info("Tilte ...." + examinationEntity.getTitle());
//
//		QuestionEntity questionEntity = QuestionConverter
//				.toEntity(questionModel);
//
//		examinationEntity.getQuestions().add(questionEntity);
//		Ivy.persistence().get(PERSISTENCE_NAME).merge(examinationEntity);

	}
	
	public static ExaminationEntity findById(Integer id) {
		return PersistenceService.getPersistence().find(ExaminationEntity.class, id);
	}
	
	public static QuestionEntity findQuestionbyId(Integer id){
		return PersistenceService.getPersistence().find(QuestionEntity.class, id);
	}
}
