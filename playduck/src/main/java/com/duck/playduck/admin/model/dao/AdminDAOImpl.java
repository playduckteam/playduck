package com.duck.playduck.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.orders.model.vo.BuyList;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<Member> Memberadmin() {
		
		return sqlSession.selectList("admin-mapper.Memberadmin");
	}

	@Override
	public Reward memberadminReward(int result) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admin-mapper.memberadminReward",result);
	}

	@Override
	public int memberadminDelete(int m_no) {
		// TODO Auto-generated method stub
		return sqlSession.update("admin-mapper.memberadminDelete",m_no);
	}

	@Override
	public List<BuyList> adminreturn() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin-mapper.adminreturn");
	}

	@Override
	public List<BuyList> admincancel() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin-mapper.admincancel");
	}

	@Override
	public List<Member> memberadminsr(String text) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin-mapper.membersr",text);
	}

	@Override
	public List<BuyList> admincancelsr(String text) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin-mapper.admincancelsr",text);
	}

	@Override
	public List<BuyList> adminreturnsr(String text) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin-mapper.adminreturnsr",text);
	}

	@Override
	public int updatereturn(int d_no) {
		// TODO Auto-generated method stub
		return sqlSession.insert("admin-mapper.updatereturn",d_no);
	}
	
	
	
	
	
}
