package com.axonactive.test.system.service;

import com.axonactive.test.system.converter.ChoiceAnswerConverter;
import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.model.ChoiceAnswerModel;

public class ChoiceAnswerService {

	public static ChoiceAnswerModel findById(Integer choiceId) {

		return ChoiceAnswerConverter.toModel(PersistenceService
				.getPersistence().find(ChoiceAnswerEntity.class, choiceId));
	}

	public static ChoiceAnswerEntity findEntityById(Integer choiceId) {

		return PersistenceService.getPersistence().find(
				ChoiceAnswerEntity.class, choiceId);
	}

}
