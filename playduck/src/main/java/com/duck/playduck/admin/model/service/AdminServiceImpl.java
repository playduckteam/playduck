package com.duck.playduck.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.admin.model.dao.AdminDAO;
import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<Member> memberadmin() {
		
		return adminDAO.Memberadmin();
	}

	@Override
	public List<Reward> memberadminReward(int result) {
		// TODO Auto-generated method stub
		return adminDAO.memberadminReward(result);
	}

}
