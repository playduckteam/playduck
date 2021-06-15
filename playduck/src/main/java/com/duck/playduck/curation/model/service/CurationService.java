package com.duck.playduck.curation.model.service;

import java.util.List;

import com.duck.playduck.curation.model.vo.Curation;
import com.duck.playduck.play.model.vo.Bookmark;
import com.duck.playduck.play.model.vo.Play;

public interface CurationService {

	int insertCuImg(Curation curation);

	int selectTotalCuration();

	List<Play> selectCurationList();

	List<Play> selectCurationList1();

	List<Play> selectCurationList2();

	List<Bookmark> selectBookList(int m_no);

}
