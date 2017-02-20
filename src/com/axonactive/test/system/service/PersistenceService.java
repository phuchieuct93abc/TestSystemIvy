package com.axonactive.test.system.service;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.data.persistence.IIvyEntityManager;

public class PersistenceService {
	private static final String PERSISTENCE_NAME = "TestPersistence";

	public static IIvyEntityManager getPersistence() {

		return Ivy.persistence().get(PERSISTENCE_NAME);
	}
}
