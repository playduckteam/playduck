package com.duck.playduck.main.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.Review;

@Repository
public class MainDAOImpl implements MainDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	@Override
	public List<Main> selectMainTopList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("main-mapper.selectMainTopList");
	}


	@Override
	public List<Review> ReviewTop10() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("main-mapper.reviewTop10");
	}


	@Override
	public List<Play> playgb() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("main-mapper.playgb");
	}


	@Override
	public List<Review> HotReview() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("main-mapper.hotReview");
	}


	@Override
	public List<Play> allPlaySelect() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("main-mapper.allPlaySelect");
	}


	@Override
	public List<Member> memberGenrenmG(int m_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("main-mapper.memberGenrenmG", m_no);
	}


	



}
