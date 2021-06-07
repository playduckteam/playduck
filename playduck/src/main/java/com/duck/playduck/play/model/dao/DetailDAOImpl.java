package com.duck.playduck.play.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DetailDAOImpl implements DetailDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

}
