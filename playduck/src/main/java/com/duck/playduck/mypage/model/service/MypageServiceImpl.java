package com.duck.playduck.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.duck.playduck.exception.BoardException;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.mypage.model.dao.MypageDAO;


@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	MypageDAO mypageDAO;

	@Override
	public int insertPfImg(List<Member> attach) {
		
		return mypageDAO.insertPfImg(attach);
	}
	






	

	
	
}
