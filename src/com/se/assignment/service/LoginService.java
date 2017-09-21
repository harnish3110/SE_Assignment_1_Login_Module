package com.se.assignment.service;

public class LoginService {

	public boolean authenticate(String uname, String pass) {

		if (uname.equals("admin") && pass.equals("admin"))
			return true;
		return false;
	}

	/*
	 * public User getUserDetails() { return user; }
	 */

	public void setUserDetails() {

	}

}
