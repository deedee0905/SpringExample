package com.aamita.spring.ex.ajax.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.aamita.spring.ex.jsp.model.User;

@Repository
public interface NewUserDAO {
	
	public List<User> selectUserList();
	
	public int insertUser(
			@Param("name") String name
			,@Param("userId") String userId
			,@Param("birthday") String birthday
			,@Param("email") String email
			);

}
