package com.duck.playduck.review.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duck.playduck.review.model.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	

	@RequestMapping("/review/reviewForm.do")
	public String ReviewForm() {
		return "reviewWrite";
	}

	@RequestMapping("/review/reviewWrite.do")
	public String insertReview(
				@RequestParam String p_no,
				@RequestParam String m_no,
				@RequestParam String r_status,
				@RequestParam int pd_theater,
				@RequestParam int pd_story,
				@RequestParam int pd_producing,
				@RequestParam int pd_casting,
				@RequestParam String r_content) {
		
		System.out.println("리뷰 저장");

		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("p_no", p_no);
		map.put("m_no", m_no);
		map.put("r_status", r_status);
		map.put("pd_theater", pd_theater);
		map.put("pd_story", pd_story);
		map.put("pd_producing", pd_producing);
		map.put("pd_casting", pd_casting);
		map.put("r_content", r_content);
		
		reviewService.insertReview(map);
		reviewService.insertReview2(map);
		
		
		return "detail";
	}

}
