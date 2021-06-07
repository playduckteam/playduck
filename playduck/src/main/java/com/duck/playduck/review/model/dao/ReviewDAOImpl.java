package com.duck.playduck.review.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertReview(Map<String, Object> map) {
		
		return sqlSession.insert("review-mapper.insertReview", map);
	}

	@Override
	public int insertReview2(Map<String, Object> map) {
		return sqlSession.insert("review-mapper.insertReview2", map);
	}

}
