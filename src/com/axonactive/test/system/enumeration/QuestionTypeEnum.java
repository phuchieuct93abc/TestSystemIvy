package com.axonactive.test.system.enumeration;

public enum QuestionTypeEnum {
	singleChoice(1), multiChoice(2), writing(3);
	private int questionTypeNumber;

	QuestionTypeEnum(Integer questionTypeNumber) {
		this.questionTypeNumber = questionTypeNumber;

	}
	public int getQuestionTypeNumber() {
		return questionTypeNumber;
	}
}
