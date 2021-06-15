package com.duck.playduck.admin2.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duck.playduck.admin2.service.AdminService2;
import com.duck.playduck.play.controller.Utils;
import com.duck.playduck.review.model.vo.Review;

@Controller
public class AdminController2 {

	@Autowired
	AdminService2 adminService;
	
	@RequestMapping("/admin2/reviewList.do")
	public String salesList(
			@RequestParam(value="cPage", required=false, defaultValue="1") int cPage,
			Model model
			) {
		
		int numPerPage = 10;
		
		List<Map<String,String>> list
			= adminService.selectReviewList(cPage, numPerPage);
		
		int totalContents = adminService.selectReviewTotalContents();
		
		String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "reviewList.do");
		
		
		
		model.addAttribute("list", list);
		model.addAttribute("totalContents", totalContents);
		model.addAttribute("numPerPage", numPerPage);
		model.addAttribute("pageBar", pageBar);
		
	
		
		return "admin/reviewList";
	}
	
	@RequestMapping("/admin2/reviewSr.do")
	public String reviewSr(
			@RequestParam(value="cPage", required=false, defaultValue="1") int cPage,
			Model model, @RequestParam(required = false) String text) {
		
		int numPerPage = 10;
		
		List<Map<String,String>> list
		= adminService.reviewSr(cPage, numPerPage, text);
		
		int totalContents = adminService.selectreviewSrTotalContents();
		
		String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "reviewSr.do");
		
		model.addAttribute("list", list);
		model.addAttribute("totalContents", totalContents);
		model.addAttribute("numPerPage", numPerPage);
		model.addAttribute("pageBar", pageBar);
		
		return "admin/reviewList";
	}
	
	
	
	@RequestMapping("/admin2/reviewDe.do")
	public String deleteReview(@RequestParam int r_no) {
		
		int r = adminService.deleteReview(r_no);
		
		
		
		return  "redirect:/admin2/reviewList.do";
	}
}
