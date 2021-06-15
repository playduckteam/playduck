package com.duck.playduck.play.model.service;

import java.util.List;

import com.duck.playduck.play.model.vo.Play;

public interface PlayService {

	

	List<Play> selectPlayList();

	

	int selectTotalContents();

	

}
