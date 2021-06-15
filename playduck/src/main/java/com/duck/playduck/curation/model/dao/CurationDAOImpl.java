package com.duck.playduck.curation.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.curation.model.vo.Curation;
import com.duck.playduck.play.model.vo.Bookmark;
import com.duck.playduck.play.model.vo.Play;

@Repository
public class CurationDAOImpl implements CurationDAO{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertCuration(Curation curation) {
		return sqlSession.insert("curation-mapper.insertCuration", curation);
	}

	@Override
	public int selectTotalCuration() {
		return sqlSession.selectOne("curation-mapper.selectTotalCuration");
	}

	@Override
	public List<Play> selectCurationList() {
		return sqlSession.selectList("curation-mapper.selectCurationList");
	}

	@Override
	public List<Play> selectCurationList1() {
		return sqlSession.selectList("curation-mapper.selectCurationList1");
	}

	@Override
	public List<Play> selectCurationList2() {
		return sqlSession.selectList("curation-mapper.selectCurationList2");
	}

	@Override
	public List<Bookmark> selectBookList(int m_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("curation-mapper.selectBookList", m_no);
	}

}
