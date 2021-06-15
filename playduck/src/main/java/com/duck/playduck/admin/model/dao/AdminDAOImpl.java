package com.duck.playduck.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<Member> Memberadmin() {
		
		return sqlSession.selectList("admin-mapper.Memberadmin");
	}

	@Override
	public List<Reward> memberadminReward(int result) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin-mapper.memberadminReward",result);
	}
	
	
	
	
	
}
