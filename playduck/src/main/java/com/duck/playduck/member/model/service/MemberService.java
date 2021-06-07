package com.duck.playduck.member.model.service;

import java.util.Map;

import com.duck.playduck.member.model.vo.Member;

public interface MemberService {

	int insertMember(Member m);

	int signUpConfirm(Map<String, String> map);

	Member selectOneMember(String m_id);

}
