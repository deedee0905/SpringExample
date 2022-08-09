package com.aamita.spring.ex.jsp.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aamita.spring.ex.jsp.dao.UserDAO;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;
	
	public int addUser(String name, String userId, String birthday, String introduce, String email) {
		return userDAO.insertUser(name, userId, birthday, introduce, email);
		
	}

}
