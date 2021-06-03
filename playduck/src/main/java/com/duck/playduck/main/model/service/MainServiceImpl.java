package com.duck.playduck.main.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.main.model.dao.MainDAO;
import com.duck.playduck.main.model.vo.Main;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	MainDAO mainDAO;

	@Override
	public List<Main> selectMainTopList() {
		// TODO Auto-generated method stub
		return mainDAO.selectMainTopList();
	}

}
