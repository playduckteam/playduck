package com.duck.playduck.md.model.service;

import java.util.List;
import java.util.Map;

import com.duck.playduck.md.model.vo.Basket;
import com.duck.playduck.md.model.vo.Md;
import com.duck.playduck.md.model.vo.mOrder;
import com.duck.playduck.play.model.vo.Play;

public interface MdService {

	List<Md> mdPlayList();

	Md selectOneMd(int d_no);

	int getReward(int mno);

	int addBasket(int dno, int mno, int num);

	List<Md> getbasketList(int mno);

	int updateBasket(int dno, int mno, int num);

	Md selectOneBasket(int dno, int mno, int num);

	int update2Basket(int dno, int mno, int num);


	int selectTotalContents();

	List<Map<String, String>> selectBoardList(int cPage, int numPerPage);

	int update3Basket(int dno, int mno, int b_status);

	int updateReward(int m_no, int w_down);

	List<Basket> getbasketList2(int m_no);

	int insertOrderList(mOrder mOrder);

	int deletebuyBasket(int m_no);


}
