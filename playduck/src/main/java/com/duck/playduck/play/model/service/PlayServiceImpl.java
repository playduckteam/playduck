package com.duck.playduck.play.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.play.model.dao.PlayDAO;
import com.duck.playduck.play.model.vo.Play;



@Service
public class PlayServiceImpl implements PlayService {

	@Autowired
	PlayDAO playDAO;


	@Override
	public List<Play> selectPlayList(int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		return playDAO.selectPlayList(cPage, numPerPage);
	}


	@Override
	public int selectTotalContents() {
		// TODO Auto-generated method stub
		return playDAO.selectTotalContents();
	}
	
	
	
}
