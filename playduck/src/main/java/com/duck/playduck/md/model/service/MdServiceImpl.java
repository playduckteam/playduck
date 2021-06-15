package com.duck.playduck.md.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.md.model.dao.MdDAO;
import com.duck.playduck.md.model.vo.Md;
import com.duck.playduck.play.model.vo.Play;

@Service
public class MdServiceImpl implements MdService {

	@Autowired
	MdDAO mdDAO;

	//연극별 MD 리스트
	@Override
	public List<Md> mdPlayList() {
		
		return mdDAO.mdPlayList();
	}

	// Md 한개 정보 가져오기
	@Override
	public Md selectOneMd(int d_no) {
		
		return mdDAO.selectOneMd(d_no);
	}

	// reward 값 가져오기
	@Override
	public int getReward(int mno) {
		
		return mdDAO.getReward(mno);
	}

	// basket에 담기
	@Override
	public int addBasket(int dno, int mno, int num) {
		
		return mdDAO.addBasket(dno, mno, num);
	}

	// 장바구니 리스트 불러오기
	@Override
	public List<Md> getbasketList(int mno) {
		
		return mdDAO.getbasketList(mno);
	}

	// basket 숫자 업데이트
	@Override
	public int updateBasket(int dno, int mno, int num) {
		
		return mdDAO.updateBasket(dno,mno,num);
	}

	// basket 하나 선택해오기
	@Override
	public Md selectOneBasket(int dno, int mno, int num) {
		
		return mdDAO.selectOneBasket(dno, mno, num);
	}
	
	// 장바구니에서 수량 수정
	@Override
	public int update2Basket(int dno, int mno, int num) {
		
		return mdDAO.update2Basket(dno,mno,num);
	}


	// MD 전체 페이지_ 페이징처리
	@Override
	public int selectTotalContents() {
		
		return mdDAO.selectTotalContents();
	}

	@Override
	public List<Map<String, String>> selectBoardList(int cPage, int numPerPage) {
		
		return mdDAO.selectBoardList(cPage, numPerPage);
	}
	// 장바구니 MD 선택하기 해제하기
	public int update3Basket(int dno, int mno, int b_status) {
		
		return mdDAO.update3Basket(dno,mno, b_status);
	}

	// 사용할 리워드 값 저장하기
	public int updateReward(int mno, int reward) {
	
		return mdDAO.updateReward(mno, reward);

	}
	

	


}
