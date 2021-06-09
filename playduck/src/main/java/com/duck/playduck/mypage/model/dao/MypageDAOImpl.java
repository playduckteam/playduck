package com.duck.playduck.mypage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.review.model.vo.Review;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertPfImg(Member m) {
		
		return sqlSession.insert("member.insertPfImg", m);
	}

	@Override
	public int selectCount(Member m) {
		
		return sqlSession.selectOne("review-mapper.selectCount", m);
	}

	@Override
	public int selectReward(Member m) {
		
		return sqlSession.selectOne("member.selectReward", m);
	}

	@Override
	public int selectRank(Member m) {
		
		return sqlSession.selectOne("member.selectRank", m);
	}

	@Override
	public int countReward(Member m) {

		return sqlSession.selectOne("member.countReward", m);
	}

	








	
}
