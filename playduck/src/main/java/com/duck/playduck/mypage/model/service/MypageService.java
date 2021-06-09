package com.duck.playduck.mypage.model.service;

import java.util.List;

import org.springframework.ui.Model;

import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.review.model.vo.Review;

public interface MypageService {

	int insertPfImg(Member m);

	int selectCount(Member m);

	int selectReward(Member m);

	int selectRank(Member m);

	int countReward(Member m);






	






	

	

}
