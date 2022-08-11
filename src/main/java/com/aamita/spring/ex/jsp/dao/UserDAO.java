package com.aamita.spring.ex.jsp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.aamita.spring.ex.jsp.model.User;

@Repository
public interface UserDAO {
	
	public int insertUser(
			@Param("name") String name
			, @Param("userId") String userId
			, @Param("birthday") String birthday
			, @Param("introduce") String introduce
			, @Param("email") String email);
	
	public int insertUserByObject(User user);
	
	public User selectLastUser();
	

}
