package com.duck.playduck.play.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.play.model.vo.Bookmark;
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

	@Override
	public List<PlayAll> playsr(String text) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("play-mapper.playsr",text);
	}

	@Override
	public List<Bookmark> selectBlist(int m_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("play-mapper.selectBlist",m_no);
	}


	
	
	
}
