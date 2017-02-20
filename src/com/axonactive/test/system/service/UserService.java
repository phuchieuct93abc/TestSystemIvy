package com.axonactive.test.system.service;

import org.apache.commons.collections4.CollectionUtils;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;

public class UserService {
	public static IRole getRole() {
		IUser user = Ivy.session().getSessionUser();

		if (user != null && !CollectionUtils.isEmpty(user.getRoles())) {

			Ivy.log().info(user.getRoles().get(0).getName());

			return user
					.getRoles()
					.stream()
					.filter(item -> !"everybody".equalsIgnoreCase(item
							.getName())).findAny().orElse(null);
		}

		return null;

	}

	public static Boolean isValidUser() {
 
		Boolean hasRole = getRole() != null;
		if (hasRole) {
			Boolean isTeacher = UserService.getRole().getName()
					.equalsIgnoreCase("Teacher");
			Boolean isStudent = UserService.getRole().getName()
					.equalsIgnoreCase("Student");
			return isTeacher || isStudent;
		}
		return false;

	}
}
