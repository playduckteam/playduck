package com.duck.playduck.md.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.md.model.dao.MdDAO;
import com.duck.playduck.play.model.vo.Play;

@Service
public class MdServiceImpl implements MdService {

	@Autowired
	MdDAO mdDAO;

	public Play playinfo(String pno) {
		
		
		return null;
	}


}
