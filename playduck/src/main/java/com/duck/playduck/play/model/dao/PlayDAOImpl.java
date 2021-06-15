package com.duck.playduck.play.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.play.model.vo.Play;

@Repository
public class PlayDAOImpl implements PlayDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<Play> selectPlayList() {
	
		return sqlSession.selectList("play-mapper.selectPlayList");
	}

	@Override
	public int selectTotalContents() {
		
		return sqlSession.selectOne("play-mapper.selectTotalContents");
	}
	
	
}
