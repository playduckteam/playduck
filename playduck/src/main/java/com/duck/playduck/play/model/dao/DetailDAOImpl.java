package com.duck.playduck.play.model.dao;

import java.util.List;
import java.util.Map;

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
	public List<Review> selectGoodReview(Map<String, Object> rmap) {
		return sqlSession.selectList("review-mapper.selectGood", rmap);
	}

	@Override
	public List<Review> selectBadReview(Map<String, Object> rmap) {
		return sqlSession.selectList("review-mapper.selectBad", rmap);
	}

	@Override
	public int deleteReview(int r_no) {
		return sqlSession.delete("review-mapper.deleteReview", r_no);
	}

	@Override
	public int reviewDupl(Map<String, Object> rmap) {
		return sqlSession.selectOne("review-mapper.reviewDupl", rmap);
	}

	@Override
	public int likeInsert(Map<String, Object> lmap) {
		return sqlSession.insert("review-mapper.likeInsert", lmap);
	}

	@Override
	public int likeInsert2(Map<String, Object> lmap) {
		return sqlSession.update("review-mapper.likeInsert2", lmap);
	}

	@Override
	public int likeCount(Map<String, Object> lmap) {
		return sqlSession.selectOne("review-mapper.likeCount", lmap);
	}

}
