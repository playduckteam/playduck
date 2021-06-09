package com.duck.playduck.md.model.service;

import java.util.List;

import com.duck.playduck.md.model.vo.Md;
import com.duck.playduck.play.model.vo.Play;

public interface MdService {

	List<Md> mdPlayList();

	Md selectOneMd(int dno);

}
