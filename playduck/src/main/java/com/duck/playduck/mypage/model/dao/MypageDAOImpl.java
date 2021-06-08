package com.duck.playduck.mypage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.member.model.vo.Member;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertPfImg(List<Member> attach) {
		
		return sqlSession.insert("member.insertPfImg", attach);
	}






	
}
