package com.axonactive.test.system.service;

import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import com.axonactive.test.system.DAO.ExaminationDAO;
import com.axonactive.test.system.converter.ExaminationConverter;
import com.axonactive.test.system.entity.ExaminationEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.model.ExaminationModel;

public class ExaminationService {
	public static ExaminationModel findById(Integer examId) {
		return ExaminationConverter.toModel(ExaminationDAO.findById(examId));
	}

	public static List<ExaminationModel> findAll() {
		return ExaminationConverter.listModel(ExaminationDAO.findAll());
	}

	public static void closeExam(Integer examId) {
		ExaminationEntity examEntity = ExaminationDAO.findById(examId);
		examEntity.setIsClosed(true);
		ExaminationDAO.update(examEntity);

	}
}
