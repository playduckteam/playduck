package com.duck.playduck.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.playduck.review.model.service.ReviewService;

public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("/reviewWrite.do")
	public void ReviewForm() {
		 
	}

}
