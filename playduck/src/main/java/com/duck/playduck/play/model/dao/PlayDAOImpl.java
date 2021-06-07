package com.duck.playduck.play.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlayDAOImpl implements PlayDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int selectPlayList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("");
	}
	
}
