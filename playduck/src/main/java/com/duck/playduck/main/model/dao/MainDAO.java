package com.duck.playduck.main.model.dao;

import java.util.List;

import com.duck.playduck.curation.model.vo.Curation;
import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.play.model.vo.Bookmark;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.Review;

public interface MainDAO {

	List<Main> selectMainTopList();

	List<Review> ReviewTop10();

	List<Play> playgb();

	List<Review> HotReview();

	List<Play> allPlaySelect();

	List<Member> memberGenrenmG(int m_no);

	List<Curation> curationforDuck();

	List<Member> memberpic();

	List<Bookmark> BookMarkC(int m_no);

	int insertBM(Bookmark b);

	int insertDe(Bookmark b);

	

	


	

}
