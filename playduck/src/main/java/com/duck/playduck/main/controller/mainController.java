package com.duck.playduck.main.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.duck.playduck.main.model.service.MainService;
import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.member.model.service.MemberService;
import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.Review;


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
	
	
	@RequestMapping("/main/mainR")
	public String selectMainTopList(Model model) {
		
		List<Main> list = new ArrayList();
		
		 list = mainservice.selectMainTopList();
		 
		 System.out.println(list.get(0).getP_no());
		
		 
		
		
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

	@RequestMapping("/main/mainReviewTop10.do")
	@ResponseBody
	public Map<String, List> ReviewTop10() {
		List<Review> list = new ArrayList();
		
		list = mainservice.ReviewTop10();
		
		List<Play> plist = new ArrayList();
		
		plist = mainservice.playgb();
		
		
		

		List listg = new ArrayList();
	
		for (Play p : plist) {
		
			listg.add(p.getP_good());
			
			
		}
		
		//Map<String, String> map = new HashMap<String,String>();
		//Map<String, String> map1 = new HashMap<String,String>();
	//	List list1 = new ArrayList();
		
		//List<Map<String,String>> list1 = new ArrayList<Map<String,String>>();
		List list1 = new ArrayList();
		List list2 = new ArrayList();
		Map<String, List> map = new HashMap<String, List>();
			

		for(Review i : list ) {
			try {

				String url = "http://www.kopis.or.kr/openApi/restful/pblprfr/"+	i.getP_no()+"?service=f6ad9fc845404d7db3617fe6ebac38a7";
				
				DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder =dbFactoty.newDocumentBuilder();
				Document doc =dBuilder.parse(url);
				
				doc.getDocumentElement().normalize();
				
				
				NodeList nList =doc.getElementsByTagName("db");
				
				
				
				for(int temp=0; temp < nList.getLength(); temp++) {
					Node nNode = nList.item(temp);
					if(nNode.getNodeType() == Node.ELEMENT_NODE) {
						
						Element eElement = (Element) nNode;
						
						
							list1.add(getTagValue("prfnm", eElement) );
							list2.add(getTagValue("poster", eElement) );
						
						//list1.add(map);
						//map.put("title", getTagValue("prfnm", eElement));
						//map.put("poster", getTagValue("poster", eElement));			
					}	
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		}	
		map.put("grade", listg);
		map.put("title", list1);
		map.put("poster",list2);
		
		//System.out.println(map);
		return map;	
	}
	
	@RequestMapping("/main/mainHotReview.do")
	@ResponseBody
	public Map<String, List> mainHotReview() {
		
		List<Review> list = new ArrayList<Review>();
		
		list = mainservice.HotReview();
		
		
		Map<String, List> map = new HashMap<String, List>();
		List list1 = new ArrayList();
		List list2 = new ArrayList();
		
		for(Review i : list ) {
		try {

			String url = "http://www.kopis.or.kr/openApi/restful/pblprfr/"+	i.getP_no()+"?service=f6ad9fc845404d7db3617fe6ebac38a7";
			
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder =dbFactoty.newDocumentBuilder();
			Document doc =dBuilder.parse(url);
			
			doc.getDocumentElement().normalize();
			
			
			NodeList nList =doc.getElementsByTagName("db");
			
			
			
			for(int temp=0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if(nNode.getNodeType() == Node.ELEMENT_NODE) {
					
					Element eElement = (Element) nNode;
					
					
	
					list1.add(i.getR_content());
					list2.add(getTagValue("poster", eElement) );
					
								
				}	
			}
		
	} catch (Exception e) {
		e.printStackTrace();
	}		
	}
		map.put("content", list1);
		map.put("poster", list2);
		
		System.out.println(map);
		
		
		return map;
	}
	
	@RequestMapping("/main/mainGenreM.do")
	@ResponseBody
	public Map<String, List> genreM() {
	
		List<Play> list = new ArrayList<Play>();
		
		list = mainservice.allPlaySelect();
		
		List tlist = new ArrayList();
		List glist = new ArrayList();
		List ilist = new ArrayList();
		
		List<String> genrenm = new ArrayList<String>();
		
		Map<String, List> map = new HashMap<String, List>();
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
					
					
					if (  "국악".equals(getTagValue("genrenm", eElement)) ) {
						tlist.add(getTagValue("prfnm", eElement));
						glist.add(p.getP_good());
						ilist.add(getTagValue("poster", eElement));
						
					
		
					
					}			
				}	
			}
		
	} catch (Exception e) {
		e.printStackTrace();
	}		
		
	}
	

		
		map.put("title", tlist);
		map.put("grade", glist);
		map.put("poster", ilist);
		
	
		return map;
	}
}
