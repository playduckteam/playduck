package com.duck.playduck.review.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.playduck.review.model.service.ReviewService;
import com.duck.playduck.review.model.vo.PlayDetail;
import com.duck.playduck.review.model.vo.Review;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	

	@RequestMapping("/review/reviewForm.do")
	public String ReviewForm() {
		return "reviewWrite";
	}

	@RequestMapping("/review/reviewWrite.do")
	public String insertReview(Review review, PlayDetail playDetail, Model model, HttpServletRequest req) {
		
		System.out.println(review);
		System.out.println(playDetail);
		
		return "detail";
	}

}
