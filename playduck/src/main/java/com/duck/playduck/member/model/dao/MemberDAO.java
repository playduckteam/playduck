package com.duck.playduck.member.model.dao;

import java.util.Map;

import com.duck.playduck.member.model.vo.Member;

public interface MemberDAO {

	int insertMember(Member m);

	int signUpConfirm(Map<String, String> map);

}
