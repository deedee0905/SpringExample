package com.aamita.spring.ex.jsp.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aamita.spring.ex.jsp.dao.UserDAO;
import com.aamita.spring.ex.jsp.model.User;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;
	
	public int addUser(String name, String birthday, String introduce, String email) {
		return userDAO.insertUser(name, birthday, introduce, email);
		
	}
	
	// 최근 등록된 사용자 가져오기
	public User getLastUser() {
		return userDAO.selectLastUser();
	}
	
	public int addUserByObject(User user) {
		return userDAO.insertUserByObject(user);
	}

}
