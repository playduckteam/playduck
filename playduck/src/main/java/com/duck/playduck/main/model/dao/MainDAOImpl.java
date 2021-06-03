package com.duck.playduck.main.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.main.model.vo.Main;

@Repository
public class MainDAOImpl implements MainDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	@Override
	public List<Main> selectMainTopList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("main-mapper.selectMainTopList");
	}

}
