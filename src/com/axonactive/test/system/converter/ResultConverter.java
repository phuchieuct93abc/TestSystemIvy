package com.axonactive.test.system.converter;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.axonactive.test.system.DAO.ExaminationDAO;
import com.axonactive.test.system.entity.ExaminationEntity;
import com.axonactive.test.system.entity.ResultEntity;
import com.axonactive.test.system.model.ResultModel;

public class ResultConverter {
	public static ResultModel toModel(ResultEntity entity) {
		
		ResultModel model = new ResultModel();
		if(entity == null){
			
			return model;
		}
		model.setScore(entity.getScore());
		model.setTakenDate(entity.getTakenDate());
		model.setUsername(entity.getUsername());
		model.setIsPassed(entity.getIsPassed());
		model.setId(entity.getId());
		return model;

	}

	public static ResultEntity toEntity(ResultModel model, Integer examId) {
		ExaminationEntity examinationEntity = ExaminationDAO.findById(examId);
		ResultEntity entity = new ResultEntity();
		entity.setUsername(model.getUsername());
		entity.setTakenDate(model.getTakenDate());
		entity.setScore(model.getScore());
		entity.setIsPassed(model.getIsPassed());
		entity.setId(model.getId());
		entity.setExamination(examinationEntity);
		Set<ResultEntity> resultList = new HashSet<>();
		resultList.add(entity);
		examinationEntity.setResults(resultList);
		return entity;

	}

	public static List<ResultModel> listModel(List<ResultEntity> listEntity) {
		List<ResultModel> listModel = listEntity.stream()
				.map(entity -> toModel(entity)).collect(Collectors.toList());
		return listModel;
	}

	public static Set<ResultModel> settoModel(Set<ResultEntity> listEntity) {
		Set<ResultModel> resultModel = listEntity.stream()
				.map(entity -> toModel(entity)).collect(Collectors.toSet());
		return resultModel;
	}

}
