package com.axonactive.test.system.service;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.axonactive.test.system.DAO.ExaminationDAO;
import com.axonactive.test.system.converter.ExaminationConverter;
import com.axonactive.test.system.entity.ExaminationEntity;
import com.axonactive.test.system.model.ExaminationModel;

public class ExaminationService {
	public static ExaminationModel findById(Integer examId) {
		return ExaminationConverter.toModel(ExaminationDAO.findById(examId));
	}

	public static List<ExaminationModel> findAll() {
		List<ExaminationEntity> examList = ExaminationDAO.findAll();
		Collections.sort(examList, (ExaminationEntity p1,ExaminationEntity p2) -> p2.getTime().compareTo(p1.getTime()));	
		return ExaminationConverter.listModel(examList);	}

	public static void closeExam(Integer examId) {
		ExaminationEntity examEntity = ExaminationDAO.findById(examId);
		examEntity.setIsClosed(true);
		ExaminationDAO.update(examEntity);

	}
}
