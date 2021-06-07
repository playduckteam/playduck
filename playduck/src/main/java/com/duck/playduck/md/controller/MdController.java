package com.duck.playduck.md.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duck.playduck.md.model.service.MdService;
import com.duck.playduck.md.model.service.MdServiceImpl;
import com.duck.playduck.play.model.vo.Play;

@Controller
public class MdController {
	
	@Autowired
	MdService mdService;
	
// 연극별 MD 리스트 페이지 
	@RequestMapping("/MD/MD_play")
	public String Md_play(@RequestParam String pno, Model model){
		
		Play play = mdService.playinfo(pno);
		
		
		return "MD_play";
	}
	
// MD 결제 페이지	
	@RequestMapping("/MD/MD_buy")
	public String Md_buy() {
		
	return "MD_buy";
	}
	
// MD 상세보기 페이지
	@RequestMapping("/MD/MD_order")
	public String Md_order() {
		
		return "MD_order";
	}
}
