package com.duck.playduck.admin2.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.duck.playduck.admin2.service.AdminService2;
import com.duck.playduck.md.model.vo.Md;
import com.duck.playduck.play.controller.Utils;

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
	
	@RequestMapping("/admin2/mdEnroll.do")
	public String mdEnroll() {
		
		
		
		return "admin/productEnList";
	}
	

			
	@RequestMapping(value = "/admin2/mdEnIn.do", method = RequestMethod.POST)
	public String mdEnIn(
			@RequestParam String name,
			@RequestParam int price,
			@RequestParam int quan,
			@RequestParam("mainP") MultipartFile mainP,
			@RequestParam("detailP") MultipartFile detailP,
			HttpServletRequest req) {
		
		Md m = new Md();
		
		String savePath = req.getServletContext().getRealPath("/resources/mdImg");
		
		if(mainP.isEmpty() == false) {
			
			String originName = mainP.getOriginalFilename(); // 파일 원래 이름
			String changeName = fileNameChanger(originName);
			
			try {
				mainP.transferTo(new File(savePath + "/" + changeName));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
			m.setD_pic(changeName);
		}
		
		if(detailP.isEmpty() == false) {
			
			String originName = detailP.getOriginalFilename(); // 파일 원래 이름
			String changeName = fileNameChanger(originName);
			
			try {
				detailP.transferTo(new File(savePath + "/" + changeName));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
			m.setD_detail(changeName);
		}
		
		
		
		m.setD_price(price);
		m.setD_title(name);
		m.setB_quan(quan);
		
		int result = adminService.insertMd(m);
		
		
		
		return "admin/productEnList";
	}
	
	public String fileNameChanger(String oldFileName) {

		String ext = oldFileName.substring(oldFileName.lastIndexOf(".") + 1);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
		int rnd = (int)(Math.random() * 1000);

		return sdf.format(new Date(System.currentTimeMillis())) + "_" + rnd + "." + ext;
		
	}
}
