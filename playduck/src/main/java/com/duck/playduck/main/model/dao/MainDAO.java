package com.duck.playduck.main.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.Review;

public interface MainDAO {

	List<Main> selectMainTopList();

	List<Review> ReviewTop10();

	List<Play> playgb();

	List<Review> HotReview();

	List<Play> allPlaySelect();

	List<Member> memberGenrenmG(int m_no);

	


	

}
