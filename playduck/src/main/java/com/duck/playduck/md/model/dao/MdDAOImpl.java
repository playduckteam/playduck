package com.duck.playduck.md.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.play.model.vo.Play;

@Repository
public class MdDAOImpl implements MdDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public Play playinfo() {
		
		return sqlSession.selectOne("md2-mapper.playinfo");
	}
}
