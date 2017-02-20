package com.axonactive.test.system.converter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import antlr.StringUtils;
import ch.ivyteam.util.StringUtil;

import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.entity.StudentAnswerEntity;
import com.axonactive.test.system.model.ChoiceAnswerModel;
import com.axonactive.test.system.model.QuestionModel;
import com.axonactive.test.system.util.QuestionUtil;

public class QuestionConverter {

	public static QuestionModel toModel(QuestionEntity questionEntity) {
		if (questionEntity == null) {
			return new QuestionModel();
		}

		QuestionModel questionModel = new QuestionModel();
		questionModel.setId(questionEntity.getId());
		questionModel.setName(questionEntity.getName());
		questionModel.setQuestionType(questionEntity.getQuestionType());
		List<ChoiceAnswerModel> choicesAnswerModel = ChoiceAnswerConverter.listModel(new ArrayList(questionEntity
				.getChoicesAnswer()));

		questionModel.setChoiceAnswer(choicesAnswerModel);

		//NTAI - Modified for Cuong
		if(questionModel.getQuestionType() != 3){
			String rightAnswer = QuestionUtil.getRightAnswer(choicesAnswerModel);
			questionModel.setRightAnswer(rightAnswer);
		}else{
			questionModel.setRightAnswer(org.apache.commons.lang.StringUtils.EMPTY);
		}
		//questionModel.setRightAnswer(rightAnswer);
		return questionModel;
	}

	public static Set<QuestionModel> listModel(Set<QuestionEntity> listEntity) {
		Set<QuestionModel> listModel = listEntity.stream().map(entity -> toModel(entity)).collect(Collectors.toSet());
		return listModel;
	}

	public static QuestionEntity toEntity(QuestionModel questionModel) {

		QuestionEntity questionEntity = new QuestionEntity();
		questionEntity.setName(questionModel.getName());
		questionEntity.setQuestionType(questionModel.getQuestionType());

		List<ChoiceAnswerEntity> choicesAnswerEntity = ChoiceAnswerConverter
				.listEntity(questionModel.getChoiceAnswer());
		questionEntity.setChoicesAnswer(new HashSet(choicesAnswerEntity));
		if (questionModel.getListStudentAnswer() != null) {
			List<StudentAnswerEntity> studentAnswerEntity = StudentAnswerConverter.listEntity(questionModel
					.getListStudentAnswer());
		}
		questionEntity.setChoicesAnswer(new HashSet(choicesAnswerEntity));
		return questionEntity;
	}

	public static Set<QuestionEntity> listEntity(Set<QuestionModel> listModel) {
		Set<QuestionEntity> listEntity = listModel.stream().map(entity -> toEntity(entity)).collect(Collectors.toSet());
		return listEntity;
	}

	public static List<QuestionModel> tolistModel(List<QuestionEntity> listEntity) {
		List<QuestionModel> listModel = listEntity.stream().map(e -> toModel(e)).collect(Collectors.toList());
		return listModel;
	}

	public static Set<QuestionModel> settoModel(Set<QuestionEntity> listEntity) {
		Set<QuestionModel> resultModel = listEntity.stream().map(entity -> toModel(entity)).collect(Collectors.toSet());
		return resultModel;
	}
}
