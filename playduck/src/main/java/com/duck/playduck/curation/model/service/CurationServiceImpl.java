package com.duck.playduck.curation.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.curation.model.dao.CurationDAO;
import com.duck.playduck.curation.model.vo.Curation;

@Service
public class CurationServiceImpl implements CurationService{
	
	@Autowired
	CurationDAO curationDAO;


	@Override
	public int insertCuImg(Curation curation) {
		
		
		return curationDAO.insertCuration(curation);
	}

}
