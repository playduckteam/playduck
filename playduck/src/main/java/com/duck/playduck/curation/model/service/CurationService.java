package com.duck.playduck.curation.model.service;

import java.util.List;
import java.util.Map;

import com.duck.playduck.curation.model.vo.Curation;
import com.duck.playduck.play.model.vo.Bookmark;
import com.duck.playduck.play.model.vo.Play;

public interface CurationService {

	int insertCuImg(Curation curation);

	int selectTotalCuration();

	List<Curation> selectCurationList(int cPage, int numPerPage);

	List<Curation> selectCurationList1(int cPage, int numPerPage);

	List<Curation> selectCurationList2(int cPage, int numPerPage);

	List<Bookmark> selectBookList(int m_no);


}
