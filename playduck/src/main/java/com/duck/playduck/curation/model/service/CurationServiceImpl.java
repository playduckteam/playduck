package com.duck.playduck.curation.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.curation.model.dao.CurationDAO;
import com.duck.playduck.curation.model.vo.Curation;
import com.duck.playduck.play.model.vo.Bookmark;
import com.duck.playduck.play.model.vo.Play;

@Service
public class CurationServiceImpl implements CurationService{
	
	@Autowired
	CurationDAO curationDAO;


	@Override
	public int insertCuImg(Curation curation) {
		
		
		return curationDAO.insertCuration(curation);
	}


	@Override
	public int selectTotalCuration() {
		
		return curationDAO.selectTotalCuration();
	}


	@Override
	public List<Play> selectCurationList() {
		return curationDAO.selectCurationList();
	}


	@Override
	public List<Play> selectCurationList1() {
		return curationDAO.selectCurationList1();
	}


	@Override
	public List<Play> selectCurationList2() {
		return curationDAO.selectCurationList2();
	}


	@Override
	public List<Bookmark> selectBookList(int m_no) {
		return curationDAO.selectBookList(m_no);
	}

}
