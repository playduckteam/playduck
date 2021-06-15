package com.duck.playduck.admin.model.service;

import java.util.List;

import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;

public interface AdminService {



	List<Member> memberadmin();

	List<Reward> memberadminReward(int result);

}
