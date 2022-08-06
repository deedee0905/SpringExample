package com.aamita.spring.ex.mybatis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aamita.spring.ex.mybatis.bo.ReviewBO;
import com.aamita.spring.ex.mybatis.model.Review;

@Controller
@RequestMapping("/mybatis")
public class ReviewController {
	
	@Autowired
	private ReviewBO reviewBO;
	
	// 특정 id의 Review 데이터 가져오기
	@RequestMapping("/ex01")
	@ResponseBody
	public Review review(@RequestParam(value="id", defaultValue="3") Integer id) {
		
		//@RequestParam("id") int id
		//@RequestParam(value="id", required=true) int id
		//@RequestParam(value="id", required=false) Integer id
		//@RequestParam(value="id", defaultValue="3") Integer id
		
		Review review = reviewBO.getReview(id);
		return review;
	}
	
	@RequestMapping("/ex02")
	@ResponseBody
	public String addReview() {
		// 가게id, 메뉴, 사용자이름, 별점, 리뷰내용
		//int count = reviewBO.addReview(4, "콤비네이션피자", "김바다", 4.5, "할인도 많이 받고 잘 먹었습니다~!");
		
		Review review = new Review();
		review.setStoreId(2);
		review.setMenu("뿌링클");
		review.setUserName("김인규");
		review.setPoint(4.0);
		review.setReview("역시 뿌링클은 진리입니다");
		int count = reviewBO.addReviewByObject(review);
		
		return "삽입 결과 : " + count;
	}
	
	
	
	

}
