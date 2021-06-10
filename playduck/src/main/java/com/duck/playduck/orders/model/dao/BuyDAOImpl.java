package com.duck.playduck.orders.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.orders.model.vo.BuyList;

@Repository
public class BuyDAOImpl implements BuyDAO{

	@Autowired
	SqlSessionTemplate sqlSession;
	


	@Override
	public List<BuyList> selectBuyList(Member m) {
		
		return sqlSession.selectList("buy-mapper.selectBuyList",m);
	}

}
