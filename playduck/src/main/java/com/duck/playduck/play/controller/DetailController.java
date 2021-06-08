package com.duck.playduck.play.controller;

import java.util.ArrayList;
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

import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.play.model.service.DetailService;

@Controller
public class DetailController {
	
	@Autowired
	DetailService detailservice;
	
	private static String getTagValue (String tag, Element eElement) {
		
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		
		Node nValue = (Node) nlList.item(0);
		if(nValue == null)
			return null;
		return nValue.getNodeValue();
		}
	

	@RequestMapping("/detail/detail.do")
	public String selectDetailOne(Model model,
			@RequestParam String p_no) {
		
		List<Main> list = new ArrayList();
		
		 list = detailservice.selectDetailOne();
		 
		 System.out.println(list);
		 model.addAttribute("date", list);
		
			try {

				String url = "http://www.kopis.or.kr/openApi/restful/pblprfr/" + p_no + "?service=a9cdb9930f1b43a38943f5f4168c74c0";
				
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
