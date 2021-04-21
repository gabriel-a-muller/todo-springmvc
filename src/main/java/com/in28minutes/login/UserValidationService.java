package com.in28minutes.login;

public class UserValidationService {
	
	private static final long serialVersionUID = 1L;
	
	public boolean isUserValid(String user, String password) {
		return user.equals("Gabriel") 
				&& password.equals("123123");
	}
}
