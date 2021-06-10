package com.duck.playduck.md.model.dao;

import java.util.List;

import com.duck.playduck.md.model.vo.Md;
import com.duck.playduck.play.model.vo.Play;

public interface MdDAO {

	//연극별 MD 리스트
	List<Md> mdPlayList();

	Md selectOneMd(int dno);

	int getReward(int mno);

}
