package com.duck.playduck.play.controller;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.duck.playduck.play.model.service.PlayService;
import com.duck.playduck.play.model.vo.Play;

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
	public String selectPlayList(Model model){
		List<Play>list = playService.selectPlayList();
		ArrayList plist = new ArrayList();
		ArrayList plist2 = new ArrayList();
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
					
					plist.add(getTagValue("prfnm", eElement));
					plist2.add(getTagValue("poster", eElement));
					
//				System.out.println(plist);
//				System.out.println(plist2);
				

				
				}	
				
			}

	} catch (Exception e) {
		e.printStackTrace();
	}
		}
		
		model.addAttribute("plist", plist);
		model.addAttribute("plist2", plist2);
		
		return"list";
	}
}
