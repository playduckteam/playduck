package com.duck.playduck.admin2.dao;

import java.util.List;
import java.util.Map;

public interface AdminDAO2 {


	List<Map<String, String>> selectReviewList(int cPage, int numPerPage);

	int selectReviewTotalContents();

	int deleteReview(int r_no);

	List<Map<String, String>> reviewSr(int cPage, int numPerPage, String text);

	int selectreviewSrTotalContents();

}
