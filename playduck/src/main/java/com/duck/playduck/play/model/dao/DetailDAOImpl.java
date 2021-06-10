package com.duck.playduck.play.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.PlayDetail;
import com.duck.playduck.review.model.vo.Review;

@Repository
public class DetailDAOImpl implements DetailDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public PlayDetail selectPDOne(String p_no) {
		return sqlSession.selectOne("play-mapper.selectPD", p_no);
	}

	@Override
	public Play selectPlayOne(String p_no) {
		return sqlSession.selectOne("play-mapper.selectPlay", p_no);
	}

	@Override
	public List<Review> selectGoodReview(String p_no) {
		return sqlSession.selectList("review-mapper.selectGood", p_no);
	}

	@Override
	public List<Review> selectBadReview(String p_no) {
		return sqlSession.selectList("review-mapper.selectBad", p_no);
	}

	@Override
	public int deleteReview(int r_no) {
		return sqlSession.delete("review-mapper.deleteReview", r_no);
	}

}
