package com.duck.playduck.admin.model.service;

import java.util.List;


import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.orders.model.vo.BuyList;

public interface AdminService {



	List<Member> memberadmin();

	Reward memberadminReward(int result);


	int memberadminDelete(int m_no);

	List<BuyList> adminreturn();

	List<BuyList> admincancel();

	List<Member> memberadminsr(String text);

	List<BuyList> admincancelsr(String text);

	List<BuyList> adminreturnsr(String text);

	int updatereturn(int d_no);

}
