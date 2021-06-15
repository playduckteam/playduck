package com.duck.playduck.admin2.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.admin2.dao.AdminDAO2;

@Service
public class AdminServiceImpl2 implements AdminService2 {

	@Autowired
	AdminDAO2 adminDAO;

	@Override
	public List<Map<String, String>> selectReviewList(int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		return adminDAO.selectReviewList(cPage, numPerPage);
	}

	@Override
	public int selectReviewTotalContents() {
		// TODO Auto-generated method stub
		return adminDAO.selectReviewTotalContents();
	}

	@Override
	public int deleteReview(int r_no) {
		// TODO Auto-generated method stub
		return adminDAO.deleteReview(r_no);
	}

	@Override
	public List<Map<String, String>> reviewSr(int cPage, int numPerPage, String text) {
		
		return adminDAO.reviewSr(cPage, numPerPage, text);
	}

	@Override
	public int selectreviewSrTotalContents() {
		// TODO Auto-generated method stub
		return adminDAO.selectreviewSrTotalContents();
	}

	
	
	

}
