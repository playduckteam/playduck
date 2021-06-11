package com.duck.playduck.main.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.curation.model.vo.Curation;
import com.duck.playduck.main.model.dao.MainDAO;
import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.play.model.vo.Bookmark;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.Review;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	MainDAO mainDAO;

	@Override
	public List<Main> selectMainTopList() {
		// TODO Auto-generated method stub
		return mainDAO.selectMainTopList();
	}

	@Override
	public List<Review> ReviewTop10() {
		// TODO Auto-generated method stub
		return mainDAO.ReviewTop10();
	}

	@Override
	public List<Play> playgb() {
		// TODO Auto-generated method stub
		return mainDAO.playgb();
	}

	@Override
	public List<Review> HotReview() {
		// TODO Auto-generated method stub
		return mainDAO.HotReview();
	}

	@Override
	public List<Play> allPlaySelect() {
		// TODO Auto-generated method stub
		return mainDAO.allPlaySelect();
	}

	@Override
	public List<Member> memberGenrenmG(int m_no) {
		// TODO Auto-generated method stub
		return mainDAO.memberGenrenmG(m_no);
	}

	@Override
	public List<Curation> curationforDuck() {
		// TODO Auto-generated method stub
		return mainDAO.curationforDuck();
	}

	@Override
	public List<Member> memberpic() {
		// TODO Auto-generated method stub
		return mainDAO.memberpic();
	}

	@Override
	public List<Bookmark> BookMarkC(int m_no) {
		// TODO Auto-generated method stub
		return mainDAO.BookMarkC(m_no);
	}

	@Override
	public int insertBM(Bookmark b) {
		// TODO Auto-generated method stub
		return mainDAO.insertBM(b);
	}

	@Override
	public int insertDe(Bookmark b) {
		// TODO Auto-generated method stub
		return mainDAO.insertDe(b);
	}







}
