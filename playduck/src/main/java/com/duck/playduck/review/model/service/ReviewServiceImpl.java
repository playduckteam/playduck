package com.duck.playduck.review.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.review.model.dao.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	ReviewDAO reviewDAO;

	@Override
	public int insertReview(Map<String, Object> map) {
		
		return reviewDAO.insertReview(map);
		
	}

	@Override
	public int insertReview2(Map<String, Object> map) {
		return reviewDAO.insertReview2(map);
		
	}
	
	
	

}
