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
	public List<Play> selectPlayList(int cPage, int numPerPage) {
		//데이터베이스 sql에서 특정 개수의 행만 뽑아오는 객체
		RowBounds rows = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("play-mapper.selectPlayList", null, rows);
	}

	@Override
	public int selectTotalContents() {
		
		return sqlSession.selectOne("play-mapper.selectTotalContents");
	}
	
	
}
