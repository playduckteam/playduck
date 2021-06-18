package com.duck.playduck.play.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.play.model.compare.AscTitle;
import com.duck.playduck.play.model.compare.AscYear;
import com.duck.playduck.play.model.service.PlayService;
import com.duck.playduck.play.model.vo.Bookmark;
import com.duck.playduck.play.model.vo.PlayAll;

@Controller
public class PlayController {
	
	@Autowired
	PlayService playService;
	
	
	@RequestMapping("/list/playlist.do")
	public String selectPlayList(HttpServletRequest req,Model model,@RequestParam(required = false, defaultValue = "0") int sortType,@RequestParam(value="cPage",required=false,defaultValue="1")int cPage){
		
		Member m = (Member)req.getSession().getAttribute("member");	
		
		//한 페이지당 페이지수
		
		int numPerPage =8;
		
		int totalContents = playService.selectTotalContents();
		
		//페이지 처리 html 생성하기
		String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "/list/playlist.do");
		
		List<PlayAll> plist = playService.selectPlayList(cPage,numPerPage);
		List<Bookmark> blist= playService.selectBlist(m.getM_no());
		System.out.println(plist);
		if(sortType==1) {
			
		}else if(sortType==2) {
			
		}
		else if(sortType==3) {
			plist.sort(new AscTitle());
		}else if(sortType==4) {
			plist.sort(new AscYear());
		}
		
		List list = new ArrayList();
		
		for (PlayAll p : plist) {
			for(Bookmark b : blist) {
				if(p.getP_no() != b.getP_list() && b.getC_list() ==null) {
					list.add(p.getP_no());
				}
			}
		}
		
		model.addAttribute("llist", list);
		model.addAttribute("plist", plist);
		model.addAttribute("totalContents", totalContents);

		return"list";
	}
	@RequestMapping("/list/playsr.do")
	public String playsr(Model model, @RequestParam(required = false) String text) {
		
		
		List<PlayAll>plist= playService.playsr(text);
		
		model.addAttribute("plist",plist);
		return"list";
	}
	
}
