package com.duck.playduck.play.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.play.model.dao.DetailDAO;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.PlayDetail;


@Service
public class DetailServiceImpl implements DetailService {
	
	@Autowired
	DetailDAO detailDAO;

	@Override
	public PlayDetail selectPDOne(String p_no) {
		
		return detailDAO.selectPDOne(p_no);
	}

	@Override
	public Play selectPlayOne(String p_no) {
		return detailDAO.selectPlayOne(p_no);
	}

}
