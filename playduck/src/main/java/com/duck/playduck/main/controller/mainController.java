package com.duck.playduck.main.controller;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.duck.playduck.main.model.service.MainService;
import com.duck.playduck.main.model.vo.Main;


@Controller
public class mainController {
	
	

	
	@Autowired
	MainService mainservice;
	
	private static String getTagValue (String tag, Element eElement) {
		
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		
		Node nValue = (Node) nlList.item(0);
		if(nValue == null)
			return null;
		return nValue.getNodeValue();
		}
	
	
	@RequestMapping("/main/mainTop10.do")
	public String selectMainTopList(Model model) {
		
		List<Main> list = new ArrayList();
		
		 list = mainservice.selectMainTopList();
		 
		 System.out.println(list);
		 model.addAttribute("date", list);
		
			try {

				String url = "http://www.kopis.or.kr/openApi/restful/pblprfr/PF132236?service=f6ad9fc845404d7db3617fe6ebac38a7";
				
				DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder =dbFactoty.newDocumentBuilder();
				Document doc =dBuilder.parse(url);
				
				doc.getDocumentElement().normalize();
				System.out.println("Root element : " + doc.getDocumentElement().getNodeName());
				
				NodeList nList =doc.getElementsByTagName("db");
				
				
				
				for(int temp=0; temp < nList.getLength(); temp++) {
					Node nNode = nList.item(temp);
					if(nNode.getNodeType() == Node.ELEMENT_NODE) {
						
						Element eElement = (Element) nNode;
						
						 System.out.println("제목 : "+getTagValue("prfnm", eElement));
						 System.out.println("상영일 : "+getTagValue("prfpdfrom", eElement));
						 System.out.println("나이 : "+getTagValue("prfage", eElement));
						 
				
						
					
						
				
						
					
					}
				}
				

		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 
		return "index";
	}
	
}
