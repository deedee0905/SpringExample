package com.aamita.spring.ex.jsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aamita.spring.ex.jsp.bo.UserBO;

@Controller
@RequestMapping("/jsp/user")
public class UserController {

	@Autowired
	private UserBO userBO;
	
	
	// new user 데이터 저장
//	@RequestMapping("/add")
//	@RequestMapping(path="/add", method=RequestMethod.POST)
	@PostMapping("/add")
	@ResponseBody
	public String addUser(
			@RequestParam("name") String name
			, @RequestParam("userId") String userId
			, @RequestParam("birthday") String birthday
			, @RequestParam("introduce") String introduce
			, @RequestParam("email") String email
			) {
		
		int count = userBO.addUser(name, userId, birthday, introduce, email);
		
		return "삽입 결과 : " + count;
		
	}
	
	@GetMapping("/input")
	public String userInput() {
		return "jsp/userInput";
	}
	
}
