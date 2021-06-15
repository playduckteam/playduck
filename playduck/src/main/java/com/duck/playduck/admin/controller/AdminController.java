package com.duck.playduck.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.playduck.admin.model.service.AdminService;
import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;


@Controller
public class AdminController {

	
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/adminpage/admin.do")
	public String memberadmin(Model model) {
		
		List<Member>alist  = adminService.memberadmin();
		for (Member m : alist ) {
			int result =m.getM_no();
			
			List<Reward> rlist = adminService.memberadminReward(result);
			model.addAttribute("rlist",rlist);
			System.out.println(rlist);
		}
		
		
		model.addAttribute("alist",alist);
		System.out.println(alist);
		
		
		return "admin/userList";
	}
	
}
