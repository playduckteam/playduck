package com.duck.playduck.md.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MdDAOImpl implements MdDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
}
