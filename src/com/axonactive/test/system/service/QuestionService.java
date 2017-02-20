package com.axonactive.test.system.service;

import com.axonactive.test.system.DAO.QuestionDAO;
import com.axonactive.test.system.model.QuestionModel;

public class QuestionService {
	public static void saveQuestion(QuestionModel questionModel, Integer examId) {
		QuestionDAO.saveQuestionToExam(questionModel, examId);
	}
}
