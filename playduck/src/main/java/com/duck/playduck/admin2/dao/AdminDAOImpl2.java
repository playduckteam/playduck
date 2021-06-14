package com.duck.playduck.admin2.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOImpl2 implements AdminDAO2 {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<Map<String, String>> selectReviewList(int cPage, int numPerPage) {
		
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		
		return sqlSession.selectList("admin2-mapper.selectReviewList", null, rows);
	}

	@Override
	public int selectReviewTotalContents() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admin2-mapper.selectReviewTotalContents");
	}

	@Override
	public int deleteReview(int r_no) {
		// TODO Auto-generated method stub
		return sqlSession.delete("admin2-mapper.deleteReview",r_no);
	}

	
	@Override
	public List<Map<String, String>> reviewSr(int cPage, int numPerPage, String text) {

		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		
		return sqlSession.selectList("admin2-mapper.reviewSr", text, rows);
	}

	@Override
	public int selectreviewSrTotalContents() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admin2-mapper.selectreviewSrTotalContents");
	}
	

}
