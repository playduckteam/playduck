package com.duck.playduck.curation.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
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
	public List<Curation> selectCurationList(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		return sqlSession.selectList("curation-mapper.selectCurationList", null, rows);
	}

	@Override
	public List<Curation> selectCurationList1(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		return sqlSession.selectList("curation-mapper.selectCurationList1", null, rows);
	}

	@Override
	public List<Curation> selectCurationList2(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		return sqlSession.selectList("curation-mapper.selectCurationList2", null, rows);
	}

	@Override
	public List<Bookmark> selectBookList(int m_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("curation-mapper.selectBookList", m_no);
	}

//	@Override
//	public List<Map<String, String>> selectBoardList(int cPage, int numPerPage) {
//		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
//		System.out.println(rows);
//		return sqlSession.selectList("curation-mapper.selectBoardList", null, rows);
//	}

}
