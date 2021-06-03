package com.duck.playduck.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.playduck.review.model.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("/review/reviewForm.do")
	public String ReviewForm() {
		return "reviewWrite";
	}

}
