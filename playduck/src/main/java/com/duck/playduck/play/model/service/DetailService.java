package com.duck.playduck.play.model.service;

import java.util.List;

import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.PlayDetail;
import com.duck.playduck.review.model.vo.Review;

public interface DetailService {


	PlayDetail selectPDOne(String p_no);

	Play selectPlayOne(String p_no);

	List<Review> selectGoodReview(String p_no);

	List<Review> selectBadReview(String p_no);

	int deleteReview( int r_no);

}
