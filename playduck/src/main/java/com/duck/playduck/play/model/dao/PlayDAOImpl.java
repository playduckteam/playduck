package com.duck.playduck.play.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.play.model.vo.PlayAll;
import com.duck.playduck.play.model.vo.PlayElement;

@Repository
public class PlayDAOImpl implements PlayDAO {

	@Autowired
	SqlSessionTemplate sqlSession;


	@Override
	public int selectTotalContents() {
		
		return sqlSession.selectOne("play-mapper.selectTotalContents");
	}

	@Override
	public List<PlayAll> selectPlayList(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("play-mapper.selectPlayList",null,rows);
	}


	
	
	
}
