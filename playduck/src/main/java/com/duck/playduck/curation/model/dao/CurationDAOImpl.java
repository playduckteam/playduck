package com.duck.playduck.curation.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.curation.model.vo.Curation;

@Repository
public class CurationDAOImpl implements CurationDAO{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertCuration(Curation curation) {
		return sqlSession.insert("curation-mapper.insertCuration", curation);
	}

}
