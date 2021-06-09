package com.duck.playduck.md.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.duck.playduck.md.model.service.MdService;
import com.duck.playduck.md.model.service.MdServiceImpl;
import com.duck.playduck.md.model.vo.Md;
import com.duck.playduck.play.model.vo.Play;

@Controller
public class MdController {
	
	@Autowired
	MdService mdService;
	
// 연극별 MD 리스트 페이지 
	@RequestMapping("/MD/MD_play")
	public String Md_play( Model model){
		
		Map<String, Object> play = new HashMap<String, Object>();
		
		try {

			String url = "http://www.kopis.or.kr/openApi/restful/pblprfr/PF174958?service=c5a9a3d1b844452d8cf8c29380c45eeb";
			
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder =dbFactoty.newDocumentBuilder();
			Document doc =dBuilder.parse(url);
			
			doc.getDocumentElement().normalize();
			System.out.println("Root element : " + doc.getDocumentElement().getNodeName());
			
			NodeList nList =doc.getElementsByTagName("db");
			
			
			
			
				Node nNode = nList.item(0);
				if(nNode.getNodeType() == Node.ELEMENT_NODE) {
					
					Element eElement = (Element) nNode;
					
					 System.out.println("제목 : "+getTagValue("prfnm", eElement));
					 System.out.println("포스터 : "+getTagValue("poster", eElement));
				
						play.put("title", getTagValue("prfnm", eElement));
						play.put("poster", getTagValue("poster", eElement));
					 
				}
				
				System.out.println(play.get("title"));
				
				//연극별 MD 리스트
				List<Md> mdPlayList = mdService.mdPlayList();
				
				System.out.println(mdPlayList);
				
			
				model.addAttribute("mdPlayList", mdPlayList);
				model.addAttribute("play",play);

	} catch (Exception e) {
		e.printStackTrace();
	}
		return "MD_play";
	}
	
private static String getTagValue (String tag, Element eElement) {
		
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		
		Node nValue = (Node) nlList.item(0);
		if(nValue == null)
			return null;
		return nValue.getNodeValue();
		}

// MD 결제 페이지	
	@RequestMapping("/MD/MD_buy")
	public String Md_buy() {
		
	return "MD_buy";
	}
	
// MD 상세보기 페이지
	@RequestMapping("/MD/MD_order")
	public String Md_order(@RequestParam int dno, Model model) {
		
		Md md = mdService.selectOneMd(dno);
		
		model.addAttribute("md", md);
		
		return "MD_order";
	}
}
