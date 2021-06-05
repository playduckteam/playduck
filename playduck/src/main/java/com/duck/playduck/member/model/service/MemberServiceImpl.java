package com.duck.playduck.member.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duck.playduck.member.model.dao.MemberDAO;
import com.duck.playduck.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public int insertMember(Member m) {
		return memberDAO.insertMember(m);
	}

	@Override
	public int signUpConfirm(Map<String, String> map) {
		return memberDAO.signUpConfirm(map);
	}

}
