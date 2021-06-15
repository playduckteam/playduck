package com.duck.playduck.admin.model.dao;

import java.util.List;

import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.orders.model.vo.BuyList;

public interface AdminDAO {

	

	List<Member> Memberadmin();

	Reward memberadminReward(int result);

	int memberadminDelete(int m_no);

	List<BuyList> adminreturn();

	List<BuyList> admincancel();

}
