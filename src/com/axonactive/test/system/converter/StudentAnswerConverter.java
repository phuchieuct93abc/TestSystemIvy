package com.axonactive.test.system.converter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.lang.StringUtils;

import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.entity.StudentAnswerEntity;
import com.axonactive.test.system.model.ChoiceAnswerModel;
import com.axonactive.test.system.model.StudentAnswerModel;
import com.axonactive.test.system.service.ChoiceAnswerService;

public class StudentAnswerConverter {

	public static StudentAnswerModel toModel(StudentAnswerEntity entity) {
		StudentAnswerModel model = new StudentAnswerModel();
		model.setChoiceAnswer(ChoiceAnswerConverter.toModel(entity
				.getChoiceAnswer()));
		model.setId(entity.getId());
		model.setUsername(entity.getUsername());
		model.setWrtingAnswer(entity.getWritingAnswer());
		return model;
	}

	public static List<StudentAnswerModel> toList(
			List<StudentAnswerEntity> listEntity) {
		List<StudentAnswerModel> listModel = listEntity.stream()
				.map(en -> toModel(en)).collect(Collectors.toList());

		return listModel;
	}

	public static StudentAnswerEntity toEntity(StudentAnswerModel model) {
		StudentAnswerEntity entity = new StudentAnswerEntity();
		if (model.getChoiceAnswer() != null) {
			entity.setChoiceAnswer(ChoiceAnswerService.findEntityById(model
					.getChoiceAnswer().getId()));
		}
		if (model.getId() != null && model.getId() != 0) {
			entity.setId(model.getId());
		}
		entity.setUsername(model.getUsername());
		if(StringUtils.isEmpty(model.getWrtingAnswer())){
			entity.setWritingAnswer(model.getWrtingAnswer());
		}		
		return entity;
	}

	public static List<StudentAnswerEntity> listEntity(
			List<StudentAnswerModel> listModel) {
		List<StudentAnswerEntity> listEntity = listModel.stream()
				.map(model -> toEntity(model)).collect(Collectors.toList());
		return listEntity;
	}
	
	public static Set<StudentAnswerModel> tosetModel(Set<StudentAnswerEntity> entity) {
		Set<StudentAnswerModel> setStudentAnswerModel = new HashSet<StudentAnswerModel>();
		for (StudentAnswerEntity studentAnswerEntity : entity) {
			StudentAnswerModel model = new StudentAnswerModel();
			if(studentAnswerEntity.getChoiceAnswer() != null){
				model.setChoiceAnswer(ChoiceAnswerConverter.toModel(studentAnswerEntity
						.getChoiceAnswer()));
			}
			
			model.setId(studentAnswerEntity.getId());
			model.setUsername(studentAnswerEntity.getUsername());
			model.setWrtingAnswer(studentAnswerEntity.getWritingAnswer());
			setStudentAnswerModel.add(model);
			
		}
		return setStudentAnswerModel;
	}
	
	public static List<StudentAnswerModel> convertSetToListModel(Set<StudentAnswerModel> setModel){
		List<StudentAnswerModel> listModel = new ArrayList<StudentAnswerModel>(setModel);
		return listModel;
	}


}
