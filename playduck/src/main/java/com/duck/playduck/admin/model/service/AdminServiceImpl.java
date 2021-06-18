package com.duck.playduck.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.admin.model.dao.AdminDAO;

import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.orders.model.vo.BuyList;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<Member> memberadmin() {
		
		return adminDAO.Memberadmin();
	}

	@Override
	public Reward memberadminReward(int result) {
		// TODO Auto-generated method stub
		return adminDAO.memberadminReward(result);
	}


	@Override
	public int memberadminDelete(int m_no) {
		// TODO Auto-generated method stub
		return adminDAO.memberadminDelete(m_no);
	}

	@Override
	public List<BuyList> adminreturn() {
		// TODO Auto-generated method stub
		return adminDAO.adminreturn();
	}

	@Override
	public List<BuyList> admincancel() {
		// TODO Auto-generated method stub
		return adminDAO.admincancel();
	}

	@Override
	public List<Member> memberadminsr(String text) {
		// TODO Auto-generated method stub
		return adminDAO.memberadminsr(text);
	}

	@Override
	public List<BuyList> admincancelsr(String text) {
		// TODO Auto-generated method stub
		return adminDAO.admincancelsr(text);
	}

	@Override
	public List<BuyList> adminreturnsr(String text) {
		// TODO Auto-generated method stub
		return adminDAO.adminreturnsr(text);
	}

	@Override
	public int updatereturn(int d_no) {
		// TODO Auto-generated method stub
		return adminDAO.updatereturn(d_no);
	}

}
