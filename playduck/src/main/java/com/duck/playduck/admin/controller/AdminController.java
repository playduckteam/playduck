package com.duck.playduck.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duck.playduck.admin.model.service.AdminService;
import com.duck.playduck.admin.model.vo.Reward;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.orders.model.vo.BuyList;


@Controller
public class AdminController {

	
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/adminpage/admin.do")
	public String memberadmin(Model model) {
		
		List<Member>alist  = adminService.memberadmin();
		List<Reward> rlist =  new ArrayList<Reward>();
		for (Member m : alist ) {
			int result =m.getM_no();
			
			 rlist.add(adminService.memberadminReward(result));
			
			System.out.println(rlist);
		}
		model.addAttribute("rlist",rlist);
	
		
		
		return "admin/userList";
	}
	
	@RequestMapping("/adminpage/adminmembersr.do")
	public String memberadminsr(Model model, @RequestParam(required = false) String text) {
		
		
		
		List<Member>srlist = adminService.memberadminsr(text);
		List<Reward> rlist =  new ArrayList<Reward>();
		for (Member m : srlist ) {
			int result =m.getM_no();
			
			 rlist.add(adminService.memberadminReward(result));
			
			System.out.println(rlist);
		}
		
		model.addAttribute("rlist",rlist);
		
		return"admin/userList";
	}
	
	
	@RequestMapping("/adminpage/adminmember.do")
	public String memberadmindelete(@RequestParam int m_no) {
	
		int result = adminService.memberadminDelete(m_no);
		
		return"redirect:/adminpage/admin.do";
	}
	@RequestMapping("/adminpage/admincancel.do")
	public String admincancel(Model model) {
		
		List<BuyList>clist = adminService.admincancel();
		
		model.addAttribute("clist",clist);
		return"admin/cancelList";
	}
	
	@RequestMapping("/adminpage/admincancelsr.do")
	public String admincancelsr(Model model, @RequestParam(required = false) String text) {
		
		List<BuyList>clist = adminService.admincancelsr(text);
		
		
		model.addAttribute("clist",clist);
		return"admin/cancelList";
	}
	
	
	@RequestMapping("/adminpage/adminreturn.do")
	public String adminreturn(Model model) {
		
		List<BuyList> rlist = adminService.adminreturn();
		
		model.addAttribute("rlist",rlist);
		return"admin/returnList";
	}
	
	@RequestMapping("/adminpage/adminreturnsr.do")
	public String adminreturnsr(Model model, @RequestParam(required = false) String text) {
		
		
		List<BuyList> rlist = adminService.adminreturnsr(text);
		
		System.out.println(rlist);
		model.addAttribute("rlist",rlist);
		return"admin/returnList";
	}
	@RequestMapping("/adminpage/adminretruncom.do")
	public String adminreturncom(Model model,@RequestParam int d_no) {
		
		
		
		
		adminService.updatereturn(d_no);
		
		
		return"admin/returnList";
	}
}
