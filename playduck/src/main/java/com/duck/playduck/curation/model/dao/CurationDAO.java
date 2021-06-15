package com.duck.playduck.curation.model.dao;

import java.util.List;

import com.duck.playduck.curation.model.vo.Curation;
import com.duck.playduck.play.model.vo.Bookmark;
import com.duck.playduck.play.model.vo.Play;

public interface CurationDAO {

	int insertCuration(Curation curation);

	int selectTotalCuration();

	List<Play> selectCurationList();

	List<Play> selectCurationList1();

	List<Play> selectCurationList2();

	List<Bookmark> selectBookList(int m_no);

}
