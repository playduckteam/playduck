package com.duck.playduck.play.model.dao;

import java.util.List;

import com.duck.playduck.play.model.vo.Play;

public interface PlayDAO {

	int selectTotalContents();
	List<Play> selectPlayList(int cPage, int numPerPage);

}
