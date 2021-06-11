package com.duck.playduck.play.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.duck.playduck.play.model.compare.AscTitle;
import com.duck.playduck.play.model.compare.AscYear;
import com.duck.playduck.play.model.service.PlayService;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.play.model.vo.PlayElement;

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
	public String selectPlayList(Model model,@RequestParam(required = false, defaultValue = "0") int sortType, @RequestParam(value="cPage",required=false,defaultValue="1")int cPage){
		
		//한 페이지당 페이지수
		int numPerPage =8;
		
		
		int totalContents = playService.selectTotalContents();
		
		//페이지 처리 html 생성하기
		String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage,sortType, "/playduck/list/playlist.do");
		
		List<Play>list = playService.selectPlayList(cPage,numPerPage,sortType);
		List<PlayElement> plist = new ArrayList<>();
		/*
		ArrayList plist = new ArrayList();
		ArrayList plist2 = new ArrayList();
		*/
//		System.out.println(list.get(0).getP_no());
		for(Play p : list) {
		try {
	
			String url = "http://www.kopis.or.kr/openApi/restful/pblprfr/"+p.getP_no()+"?service=f6ad9fc845404d7db3617fe6ebac38a7";
			
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder =dbFactoty.newDocumentBuilder();
			Document doc =dBuilder.parse(url);
			
			doc.getDocumentElement().normalize();
			
			NodeList nList =doc.getElementsByTagName("db");
			
			for(int temp=0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if(nNode.getNodeType() == Node.ELEMENT_NODE) {
					
					Element eElement = (Element) nNode;
					plist.add(new PlayElement(getTagValue("prfnm", eElement), getTagValue("poster", eElement), getTagValue("prfpdfrom", eElement)));
					
//				System.out.println(plist);
//				System.out.println(plist2);
				

				
				}	
				
			}

	} catch (Exception e) {
		e.printStackTrace();
	}
		}
		
		
		if(sortType==3) {
			plist.sort(new AscTitle());
		}else if(sortType==4) {
			plist.sort(new AscYear());
			
		}
		
		
		model.addAttribute("plist", plist);
		model.addAttribute("totalContents", totalContents);
		model.addAttribute("numPerPage", numPerPage);
		model.addAttribute("pageBar", pageBar);
		
		return"list";
	}
}
