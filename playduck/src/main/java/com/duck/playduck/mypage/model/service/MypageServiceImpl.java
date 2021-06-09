package com.duck.playduck.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.duck.playduck.exception.BoardException;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.mypage.model.dao.MypageDAO;
import com.duck.playduck.review.model.vo.Review;


@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	MypageDAO mypageDAO;

	@Override
	public int insertPfImg(Member m) {
		
		return mypageDAO.insertPfImg(m);
	}

	@Override
	public int selectCount(Member m) {
		// TODO Auto-generated method stub
		return mypageDAO.selectCount(m);
	}

	@Override
	public int selectReward(Member m) {

		return mypageDAO.selectReward(m);
	}











	

	
	
}
