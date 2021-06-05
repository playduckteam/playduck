package com.duck.playduck.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.member.model.vo.Member;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertMember(Member m) {
		return sqlSession.insert("member.insertMember",m);
	}

	@Override
	public int signUpConfirm(Map<String, String> map) {
		return sqlSession.update("member.signUpConfirm", map);
	}

}
