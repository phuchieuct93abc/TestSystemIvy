package com.axonactive.test.system.converter;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.model.ChoiceAnswerModel;

public class ChoiceAnswerConverter {
	public static ChoiceAnswerModel toModel(ChoiceAnswerEntity entity) {
		ChoiceAnswerModel model = new ChoiceAnswerModel();
		model.setContent(entity.getContent());
		model.setIsCorrect(entity.getIsCorrect());
		if (entity.getId() != 0 && entity.getId() !=0 ) {
			model.setId(entity.getId());
		}
		//QuestionModel questionModel = QuestionConverter.toModel(entity.getQuestion());
		//model.setQuestion(questionModel);
		return model;

	}

	public static List<ChoiceAnswerModel> listModel(
			List<ChoiceAnswerEntity> listEntity) {
		List<ChoiceAnswerModel> listModel = listEntity.stream()
				.map(entity -> toModel(entity)).collect(Collectors.toList());
		return listModel;
	}
	
	public static ChoiceAnswerEntity toEntity(ChoiceAnswerModel model) {
		ChoiceAnswerEntity entity = new ChoiceAnswerEntity();
		entity.setContent(model.getContent());
		entity.setIsCorrect(model.getIsCorrect());
		entity.setId(model.getId());
		return entity;

	}

	public static List<ChoiceAnswerEntity> listEntity(
			List<ChoiceAnswerModel> listModel) {
		List<ChoiceAnswerEntity> listEntity = listModel.stream()
				.map(model -> toEntity(model)).collect(Collectors.toList());
		return listEntity;
	}
	
	public static Set<ChoiceAnswerEntity> setEntity(
			List<ChoiceAnswerModel> listModel) {
		Set<ChoiceAnswerEntity> setEntity = listModel.stream()
				.map(model -> toEntity(model)).collect(Collectors.toSet());
		return setEntity;
	}
}
