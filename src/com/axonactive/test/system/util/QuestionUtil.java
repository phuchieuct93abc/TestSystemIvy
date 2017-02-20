package com.axonactive.test.system.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;

import org.apache.commons.lang.StringUtils;

import ch.ivyteam.util.StringUtil;

import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.model.ChoiceAnswerModel;
import com.axonactive.test.system.model.ExaminationModel;
import com.axonactive.test.system.model.QuestionModel;

public class QuestionUtil {

	public static List<Integer> getIndexsOfRightAnswers(
			QuestionModel questionModel) {
		List<Integer> correctAnswerIndexs = new ArrayList<>();
		String rightAnswer = questionModel.getRightAnswer();

		if (StringUtils.isEmpty(questionModel.getRightAnswer()))
			return correctAnswerIndexs;

		switch (questionModel.getQuestionType()) {

		case 1: {
			char c = rightAnswer.charAt(0);
			correctAnswerIndexs.add(QuestionUtil.getIndexFromChar(c));
		}

		case 2: {
			correctAnswerIndexs = QuestionUtil
					.getIndexsFromMultipleChoice(rightAnswer);
		}
		}

		return correctAnswerIndexs;
	}

	public static List<Integer> getIndexsOfRightAnswers(String rightAnswer) {
		List<Integer> correctAnswerIndexs = new ArrayList<>();

		if (StringUtils.isEmpty(rightAnswer))
			return correctAnswerIndexs;

		if (rightAnswer.length() == 1) {
			char c = rightAnswer.charAt(0);
			correctAnswerIndexs.add(QuestionUtil.getIndexFromChar(c));
		} else {
			correctAnswerIndexs = QuestionUtil
					.getIndexsFromMultipleChoice(rightAnswer);
		}

		return correctAnswerIndexs;
	}

	private static int getIndexFromChar(char c) {
		int index = 0;
		if (Character.isUpperCase(c)) {
			index = c - 'A';
		} else {
			index = c - 'a';
		}
		return index;
	}

	private static char getCharFromIndex(int i) {
		return (char) (i + 'A');
	}

	private static List<Integer> getIndexsFromMultipleChoice(String rightAnswers) {
		List<Integer> correctAnswerIndexs = new ArrayList<>();

		if (StringUtils.isEmpty(rightAnswers))
			return correctAnswerIndexs;

		String[] strs = rightAnswers.trim().split(",");
		for (String str : strs) {
			char c = str.trim().charAt(0);
			correctAnswerIndexs.add(getIndexFromChar(c));
		}

		return correctAnswerIndexs;
	}

	// public static String getRightAnswer(
	// List<ChoiceAnswerEntity> choiceAnswerEntity) {
	// if (choiceAnswerEntity == null || choiceAnswerEntity.size() == 0)
	// return "";
	//
	// StringBuilder rightAnswer = new StringBuilder();
	// for (int i = 0; i < choiceAnswerEntity.size(); i++) {
	// ChoiceAnswerEntity answerEntity = choiceAnswerEntity.get(i);
	// if (answerEntity.getIsCorrect()) {
	// char c = getCharFromIndex(i);
	// rightAnswer.append(c + ",");
	//
	// }
	// }
	// // delete the comma
	// rightAnswer.deleteCharAt(rightAnswer.length() - 1);
	// return rightAnswer.toString();
	// }

	public static String getRightAnswer(
			List<ChoiceAnswerModel> choiceAnswerModel) {
		if (choiceAnswerModel == null || choiceAnswerModel.size() == 0)
			return "";

		StringBuilder rightAnswer = new StringBuilder();
		for (int i = 0; i < choiceAnswerModel.size(); i++) {
			ChoiceAnswerModel answerEntity = choiceAnswerModel.get(i);
			if (answerEntity.getIsCorrect()) {
				char c = getCharFromIndex(i);
				rightAnswer.append(c + ",");

			}
		}
		// delete the comma
		rightAnswer.deleteCharAt(rightAnswer.length() - 1);
		return rightAnswer.toString();
	}

	public static void setTrueForCorrectAnswer(
			List<ChoiceAnswerModel> choiceAnswerModels, String rightAnswer) {

		if (StringUtils.isEmpty(rightAnswer)) {
			for (ChoiceAnswerModel choiceAnswerModel : choiceAnswerModels) {
				choiceAnswerModel.setIsCorrect(false);
			}
			return;
		}

		List<Integer> rightAnswerIndex = QuestionUtil
				.getIndexsOfRightAnswers(rightAnswer);
		for (int i = 0; i < choiceAnswerModels.size(); i++) {
			ChoiceAnswerModel choiceAnswerModel = choiceAnswerModels.get(i);
			if (rightAnswerIndex.contains(i)) {
				choiceAnswerModel.setIsCorrect(true);
			} else {
				choiceAnswerModel.setIsCorrect(false);
			}
		}
	}

	public static QuestionModel cloneQuestionModel(QuestionModel questionModel) {
		QuestionModel newQuestionModel = new QuestionModel();
		newQuestionModel.setName(questionModel.getName());
		newQuestionModel.setQuestionType(questionModel.getQuestionType());
		newQuestionModel.setRightAnswer(questionModel.getRightAnswer());
		List<ChoiceAnswerModel> newChoiceAnswerModels = new ArrayList<>();
		for (ChoiceAnswerModel oldAnswer : questionModel.getChoiceAnswer()) {
			newChoiceAnswerModels.add(cloneChoiceAnswerModel(oldAnswer));
		}
		newQuestionModel.setChoiceAnswer(newChoiceAnswerModels);
		return newQuestionModel;
	}

	public static void copyQuestionModel(QuestionModel newQuestionModel,
			QuestionModel oldQuestionModel) {

		newQuestionModel.setName(oldQuestionModel.getName());
		newQuestionModel.setQuestionType(oldQuestionModel.getQuestionType());
		newQuestionModel.setRightAnswer(oldQuestionModel.getRightAnswer());
		newQuestionModel.getChoiceAnswer().clear();

		for (ChoiceAnswerModel oldAnswer : oldQuestionModel.getChoiceAnswer()) {
			newQuestionModel.getChoiceAnswer().add(
					cloneChoiceAnswerModel(oldAnswer));
		}
	}

	public static ChoiceAnswerModel cloneChoiceAnswerModel(
			ChoiceAnswerModel choiceAnswerModel) {
		ChoiceAnswerModel newChoiAnswerModel = new ChoiceAnswerModel();
		newChoiAnswerModel.setContent(choiceAnswerModel.getContent());
		newChoiAnswerModel.setIsCorrect(choiceAnswerModel.getIsCorrect());
		return newChoiAnswerModel;
	}

	public static void copyChoiceAnswerModel(
			ChoiceAnswerModel newChoiAnswerModel,
			ChoiceAnswerModel oldChoiceAnswerModel) {

		newChoiAnswerModel.setContent(oldChoiceAnswerModel.getContent());
		newChoiAnswerModel.setIsCorrect(oldChoiceAnswerModel.getIsCorrect());

	}

	public static ExaminationModel convertExamWithSortedSetQuestion(
			ExaminationModel examModel) {
		if (examModel.getId() == null) {
			examModel.setQuestion(new LinkedHashSet<QuestionModel>());
			return examModel;
		}

		Set<QuestionModel> questionSet = examModel.getQuestion();

		List<QuestionModel> questionSortedList = new ArrayList<>();
		for (QuestionModel questionModel : questionSet) {
			questionSortedList.add(questionModel);
		}

		Collections.sort(questionSortedList, new Comparator<QuestionModel>() {

			@Override
			public int compare(QuestionModel q1, QuestionModel q2) {
				return q1.getId() - q2.getId();
			}
		});
		LinkedHashSet<QuestionModel> questionSortedSet = new LinkedHashSet<>(
				questionSortedList);
		examModel.setQuestion(questionSortedSet);
		return examModel;

	}
}
