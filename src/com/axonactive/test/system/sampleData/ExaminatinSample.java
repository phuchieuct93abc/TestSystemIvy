package com.axonactive.test.system.sampleData;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.DateTime;

import com.axonactive.test.system.converter.QuestionConverter;
import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.entity.ExaminationEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.model.QuestionModel;
import com.axonactive.test.system.service.PersistenceService;

public class ExaminatinSample {
	public static void createSampleExamination() {
		ExaminationEntity examnination = new ExaminationEntity();
		Set<QuestionEntity> questions = new HashSet<>();

		examnination.setIsReadyForTest(true);
		examnination.setDuration(30);
		examnination.setPassPercentage(80);
		examnination.setTime(Calendar.getInstance().getTime());
		examnination.setTitle("Clean code Test");

		for (int i = 0; i < 5; i++) {
			QuestionEntity tmpQuestionEntity = new QuestionEntity();
			tmpQuestionEntity.setName("Question " + i);
			tmpQuestionEntity.setQuestionType(2);
			List<ChoiceAnswerEntity> tmpAnswers = new ArrayList<>();

			for (int j = 0; j < 4; j++) {
				ChoiceAnswerEntity tmpChoiceAnswerEntity = new ChoiceAnswerEntity();
				if (j == 2 || j == 1) {
					tmpChoiceAnswerEntity.setContent("Ansewer " + i*Math.random());
					tmpChoiceAnswerEntity.setIsCorrect(true);
				} else {
					tmpChoiceAnswerEntity.setContent("Answer " + i*Math.random());
					tmpChoiceAnswerEntity.setIsCorrect(false);
				}
				tmpChoiceAnswerEntity.setQuestion(tmpQuestionEntity);
				tmpAnswers.add(tmpChoiceAnswerEntity);
			}
			tmpQuestionEntity.setChoicesAnswer(new HashSet(tmpAnswers));
			tmpQuestionEntity.setExamination(examnination);
			// PersistenceService.getPersistence().persist(tmpQuestionEntity);
			questions.add(tmpQuestionEntity);
		}
		examnination.setQuestions(questions);

		PersistenceService.getPersistence().persist(examnination);
		Ivy.log().info("Finish Create Data");
	}

	public static QuestionModel createSampleQuestionModel() {
		QuestionEntity tmpQuestionEntity = new QuestionEntity();
		tmpQuestionEntity.setName("What time is it");
		tmpQuestionEntity.setQuestionType(1);
		List<ChoiceAnswerEntity> tmpAnswers = new ArrayList<>();

		for (int j = 0; j < 4; j++) {
			ChoiceAnswerEntity tmpChoiceAnswerEntity = new ChoiceAnswerEntity();
			if (j == 2) {
				tmpChoiceAnswerEntity.setContent("8:30");
				tmpChoiceAnswerEntity.setIsCorrect(true);
			} else {
				tmpChoiceAnswerEntity.setContent("20:15");
				tmpChoiceAnswerEntity.setIsCorrect(false);
			}
			tmpAnswers.add(tmpChoiceAnswerEntity);
		}
		tmpQuestionEntity.setChoicesAnswer(new HashSet(tmpAnswers));
		Ivy.log().info("Finish Create QuestionModel");
		return QuestionConverter.toModel(tmpQuestionEntity);

	}
}
