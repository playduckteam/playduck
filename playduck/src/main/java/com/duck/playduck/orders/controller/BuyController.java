package com.duck.playduck.orders.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.orders.model.service.BuyService;
import com.duck.playduck.orders.model.vo.BuyList;

@Controller
public class BuyController {
	
	@Autowired
	BuyService buyService;
	
	@RequestMapping("/buy/buylist.do")
	public String buyList(HttpServletRequest req,Model model) {
		
	Member m = (Member)req.getSession().getAttribute("member");	
		
	List<BuyList>blist = buyService.selectBuyList(m);	
		
		System.out.println(blist);
		
		model.addAttribute(blist);
		return"buy_list";
	}
	
}
