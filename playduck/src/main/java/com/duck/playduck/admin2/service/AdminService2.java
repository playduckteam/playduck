package com.duck.playduck.admin2.service;

import java.util.List;
import java.util.Map;

import com.duck.playduck.md.model.vo.Md;
import com.duck.playduck.review.model.vo.Review;

public interface AdminService2 {


	List<Map<String, String>> selectReviewList(int cPage, int numPerPage);

	int selectReviewTotalContents();

	int deleteReview(int r_no);

	List<Map<String, String>> reviewSr(int cPage, int numPerPage, String text);

	int selectreviewSrTotalContents();

	int insertMd(Md m);

}
