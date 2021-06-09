package com.duck.playduck.mypage.model.dao;

import java.util.List;

import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.review.model.vo.Review;

public interface MypageDAO {

	int insertPfImg(Member m);

	int selectCount(Member m);

	int selectReward(Member m);

	int selectRank(Member m);

	int countReward(Member m);





	








}
