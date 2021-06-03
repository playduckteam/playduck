package com.duck.playduck.play.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.play.model.dao.PlayDAO;



@Service
public class PlayServiceImpl implements PlayServcie {

	@Autowired
	PlayDAO playDAO;
	
	
	
}
