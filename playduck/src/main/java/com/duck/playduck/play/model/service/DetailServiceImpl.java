package com.duck.playduck.play.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.play.model.dao.DetailDAO;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.PlayDetail;
import com.duck.playduck.review.model.vo.Review;


@Service
public class DetailServiceImpl implements DetailService {
	
	@Autowired
	DetailDAO detailDAO;

	@Override
	public PlayDetail selectPDOne(String p_no) {
		
		return detailDAO.selectPDOne(p_no);
	}

	@Override
	public Play selectPlayOne(String p_no) {
		return detailDAO.selectPlayOne(p_no);
	}

	@Override
	public List<Review> selectGoodReview(Map<String, Object> rmap) {
		return detailDAO.selectGoodReview(rmap);
	}

	@Override
	public List<Review> selectBadReview(Map<String, Object> rmap) {
		return detailDAO.selectBadReview(rmap);
	}

	@Override
	public int deleteReview(int r_no) {
		return detailDAO.deleteReview(r_no);
	}

	@Override
	public int reviewDupl(Map<String, Object> rmap) {
		return detailDAO.reviewDupl(rmap);
	}

	@Override
	public int likeInsert(Map<String, Object> lmap) {
		return detailDAO.likeInsert(lmap);
	}

	@Override
	public int likeInsert2(Map<String, Object> lmap) {
		return detailDAO.likeInsert2(lmap);
	}

	@Override
	public int likeCount(Map<String, Object> lmap) {
		return detailDAO.likeCount(lmap);
	}

}
