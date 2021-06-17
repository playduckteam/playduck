package com.duck.playduck.play.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.duck.playduck.play.model.compare.AscTitle;
import com.duck.playduck.play.model.compare.AscYear;
import com.duck.playduck.play.model.service.PlayService;
import com.duck.playduck.play.model.vo.PlayAll;

@Controller
public class PlayController {
	
	@Autowired
	PlayService playService;
	
private static String getTagValue (String tag, Element eElement) {
		
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		
		Node nValue = (Node) nlList.item(0);
		if(nValue == null)
			return null;
		return nValue.getNodeValue();
		}
	
	@RequestMapping("/list/playlist.do")
	public String selectPlayList(Model model,@RequestParam(required = false, defaultValue = "0") int sortType,@RequestParam(value="cPage",required=false,defaultValue="1")int cPage){
		
		//한 페이지당 페이지수
		
		int numPerPage =8;
		
		int totalContents = playService.selectTotalContents();
		
		//페이지 처리 html 생성하기
		String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "/list/playlist.do");
		
		List<PlayAll> plist = playService.selectPlayList(cPage,numPerPage);
		
		
		if(sortType==3) {
			plist.sort(new AscTitle());
		}else if(sortType==4) {
			plist.sort(new AscYear());
			
		}
		
		
		model.addAttribute("plist", plist);
		model.addAttribute("totalContents", totalContents);

		return"list";
	}
}
