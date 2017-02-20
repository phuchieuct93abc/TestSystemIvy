package com.axonactive.test.system.converter;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.model.ChoiceAnswerModel;

public class AnswerConverter {

	public static ChoiceAnswerModel toModel(ChoiceAnswerEntity entity){
		ChoiceAnswerModel model = new ChoiceAnswerModel();		
		model.setIsCorrect(entity.getIsCorrect());
		model.setId(entity.getId());		
		model.setContent(entity.getContent());		
		return model;
		
	}
	

	
	
	
	public static List<ChoiceAnswerModel> toListModel(List<ChoiceAnswerEntity> set){
		List<ChoiceAnswerModel> listModel = set.stream()
				.map(entity -> toModel(entity))
				.collect(Collectors.toList());	
		return listModel;
	}
	
	public static Set<ChoiceAnswerModel> toSetModel(Set<ChoiceAnswerEntity> listEntity){
		Set<ChoiceAnswerModel> setModel = listEntity.stream()
				.map(entity -> toModel(entity))
				.collect(Collectors.toSet());	
		return setModel;
	}
		
}
