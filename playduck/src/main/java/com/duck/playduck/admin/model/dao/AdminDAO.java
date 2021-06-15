package com.duck.playduck.admin.model.dao;

import java.util.List;

import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;

public interface AdminDAO {

	

	List<Member> Memberadmin();

	List<Reward> memberadminReward(int result);

}
