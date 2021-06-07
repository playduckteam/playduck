package com.duck.playduck.main.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.main.model.dao.MainDAO;
import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.Review;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	MainDAO mainDAO;

	@Override
	public List<Main> selectMainTopList() {
		// TODO Auto-generated method stub
		return mainDAO.selectMainTopList();
	}

	@Override
	public List<Review> ReviewTop10() {
		// TODO Auto-generated method stub
		return mainDAO.ReviewTop10();
	}

	@Override
	public List<Play> playgb() {
		// TODO Auto-generated method stub
		return mainDAO.playgb();
	}

	@Override
	public List<Review> HotReview() {
		// TODO Auto-generated method stub
		return mainDAO.HotReview();
	}







}
