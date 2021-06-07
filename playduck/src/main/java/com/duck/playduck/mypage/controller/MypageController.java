package com.duck.playduck.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duck.playduck.curation.model.vo.Curation;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.mypage.model.service.MypageService;
import com.duck.playduck.review.model.vo.Review;

@Controller
public class MypageController {
	
	@Autowired
	MypageService mypageService;
	
	@RequestMapping("/mypage/mypage.do")
	public String mypage(Member m_no, Model model) {
		
		Member member = new Member();
		Curation curation = new Curation();
		Review review = new Review();
		

		
		return "myPage";
	}

}
