package com.axonactive.test.system.converter;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.collections.CollectionUtils;

import ch.ivyteam.ivy.environment.Ivy;

import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.entity.ExaminationEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.entity.ResultEntity;
import com.axonactive.test.system.model.ExaminationModel;
import com.axonactive.test.system.model.QuestionModel;

public class ExaminationConverter {
	public static ExaminationModel toModel(ExaminationEntity entity) {
		Ivy.log().info("Start convert Examnination Entity");
		ExaminationModel model = new ExaminationModel();
		model.setTitle(entity.getTitle());
		model.setId(entity.getId());
		model.setDuration(entity.getDuration());
		//model.setQuestion(QuestionConverter.settoModel(entity.getQuestions()));
		model.setTime(entity.getTime());
		model.setPassPercentage(entity.getPassPercentage());
		model.setIsReadyForTest(entity.getIsReadyForTest());
		if(CollectionUtils.isNotEmpty(entity.getResults())){
			
			List<ResultEntity> results = new ArrayList(entity.getResults());
			model.setResult(ResultConverter.listModel(results));
		}

		Set<QuestionModel> questions = QuestionConverter.listModel(entity
				.getQuestions());
		model.setQuestion(questions);
		// for (QuestionModel questionModel : questions) {
		// model.getQuestionMap().put(questionModel.getId(), questionModel);
		// }
		model.setIsClosed(entity.getIsClosed());
		return model;

	}

	public static List<ExaminationModel> listModel(
			List<ExaminationEntity> listEntity) {
		List<ExaminationModel> listModel = listEntity.stream()
				.map(entity -> toModel(entity)).collect(Collectors.toList());
		return listModel;
	}

	public static ExaminationEntity toEntity(ExaminationModel examModel) {
		ExaminationEntity examEntity = new ExaminationEntity();
		examEntity.setDuration(examModel.getDuration());
		examEntity.setIsReadyForTest(examModel.getIsReadyForTest());
		examEntity.setPassPercentage(examModel.getPassPercentage());
		Set<QuestionEntity> questionEntities = QuestionConverter
				.listEntity((examModel.getQuestion()));
		for (QuestionEntity questionEntity : questionEntities) {
			questionEntity.setExamination(examEntity);
			for (ChoiceAnswerEntity choiceAnswerEntity : questionEntity
					.getChoicesAnswer()) {
				choiceAnswerEntity.setQuestion(questionEntity);
			}
		}

		examEntity.setQuestions(questionEntities);
		examEntity.setTime(examModel.getTime());
		examEntity.setTitle(examModel.getTitle());
		return examEntity;
	}
}
