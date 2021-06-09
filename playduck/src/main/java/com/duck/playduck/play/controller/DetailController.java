package com.duck.playduck.play.controller;

import java.util.ArrayList;

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

import com.duck.playduck.play.model.service.DetailService;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.PlayDetail;

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
			@RequestParam String p_no
			) {
		
			 
		 ArrayList dlist = new ArrayList();
		 
		 
		
		 PlayDetail playDetail = detailservice.selectPDOne(p_no);
		 Play play = detailservice.selectPlayOne(p_no);
			
		
			try {

				String url = "http://www.kopis.or.kr/openApi/restful/pblprfr/" + p_no + "?service=a9cdb9930f1b43a38943f5f4168c74c0";
				
				DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder =dbFactoty.newDocumentBuilder();
				Document doc =dBuilder.parse(url);
				
				doc.getDocumentElement().normalize();
				
				NodeList nList =doc.getElementsByTagName("db");
				
				for(int temp=0; temp < nList.getLength(); temp++) {
					Node nNode = nList.item(temp);
					if(nNode.getNodeType() == Node.ELEMENT_NODE) {
						
						Element eElement = (Element) nNode;
						
						dlist.add(getTagValue("prfnm", eElement));
						dlist.add(getTagValue("poster", eElement));
						dlist.add(getTagValue("genrenm", eElement));
						dlist.add(getTagValue("fcltynm", eElement));
						dlist.add(getTagValue("prfruntime", eElement));
						dlist.add(getTagValue("entrpsnm", eElement));
						dlist.add(getTagValue("prfpdfrom	", eElement));
						dlist.add(getTagValue("prfpdto", eElement));
						dlist.add(getTagValue("prfcast", eElement));
						
//					System.out.println(plist);
//					System.out.println(plist2);
					
						
					}	
					
				}
				


			} catch (Exception e) {
				e.printStackTrace();
			}
				
			
				
				model.addAttribute("dlist", dlist);

		return "detail";
	}
}

