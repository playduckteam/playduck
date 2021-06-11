package com.duck.playduck.md.model.dao;

import java.util.List;

import com.duck.playduck.md.model.vo.Md;
import com.duck.playduck.play.model.vo.Play;

public interface MdDAO {

	//연극별 MD 리스트
	List<Md> mdPlayList();

	Md selectOneMd(int dno);

	int getReward(int mno);

	int addBasket(int dno, int mno, int num);

	List<Md> getbasketList(int mno);

	int updateBasket(int dno, int mno, int num);

	Md selectOneBasket(int dno, int mno, int num);

}
