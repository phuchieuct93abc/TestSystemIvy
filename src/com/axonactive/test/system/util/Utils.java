package com.axonactive.test.system.util;

import java.io.IOException;

import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;

public class Utils {
	public static void redirect(String url) throws EnvironmentNotAvailableException,
			IOException {

		FacesContext.getCurrentInstance().getExternalContext()
				.redirect(Ivy.html().startref(url));

	}
}
