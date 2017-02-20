package com.axonactive.test.system.DAO;

import com.axonactive.test.system.entity.ResultEntity;
import com.axonactive.test.system.service.PersistenceService;

public class ResultDAO {

	public static ResultEntity findById(Integer id) {
		return PersistenceService.getPersistence().find(ResultEntity.class, id);
	}

	public static ResultEntity update(ResultEntity entity) {
		return PersistenceService.getPersistence().merge(entity);
	}

}
