package com.in28minutes.jee;

public class UserValidationService {
	
	private static final long serialVersionUID = 1L;
	
	public boolean isUserValid(String user, String password) {
		if(user.equals("Gabriel") && password.equals("123123"))
			return true;
		return false;
	}
}
