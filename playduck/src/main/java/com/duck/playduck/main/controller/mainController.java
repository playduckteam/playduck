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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.duck.playduck.curation.model.vo.Curation;
import com.duck.playduck.main.model.service.MainService;
import com.duck.playduck.main.model.vo.Main;
import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.play.model.vo.Bookmark;
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
		
		List<Main> list = new ArrayList<Main>();
		
		 list = mainservice.selectMainTopList();
		 
		
		
		 
		
		
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
		List<Review> list = new ArrayList<Review>();
		
		list = mainservice.ReviewTop10();
		
		List<Play> plist = new ArrayList<Play>();
		
		plist = mainservice.playgb();
		
		
		

		List listg = new ArrayList();
	
		for (Play p : plist) {
		
			listg.add(p.getP_good());
			
			
		}
		
		//Map<String, String> map = new HashMap<String,String>();
		//Map<String, String> map1 = new HashMap<String,String>();
	//	List list1 = new ArrayList();
		
		//List<Map<String,String>> list1 = new ArrayList<Map<String,String>>();
		List<String> list1 = new ArrayList<String>();
		List<String> list2 = new ArrayList<String>();
		List<String> list3 = new ArrayList<String>();
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
							list3.add(getTagValue("mt20id", eElement) );
						
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
		map.put("pnum",list3);
		
		//System.out.println(map);
		return map;	
	}
	
	
	@RequestMapping("/main/curationforDuck.do")
	@ResponseBody
	public Map<String, List> curationforDuck() {
		
		List<Curation> list = new ArrayList<Curation>();
		
		list = mainservice.curationforDuck();
		
	
		Map<String, List> map = new HashMap<String, List>();
		
		List listC = new ArrayList();
		List<String> listT = new ArrayList<String>();
		List<String> listP = new ArrayList<String>();
		
		
		for (Curation c : list) {
			listC.add(c.getC_no());
			listT.add(c.getC_title());
			listP.add(c.getC_picrenamed());
		}
		
		map.put("Cnum", listC);
		map.put("title", listT);
		map.put("pic", listP);
		
		System.out.println(map);
		return map;
	}
	
	@RequestMapping("/main/mainHotReview.do")
	@ResponseBody
	public Map<String, List<String>> mainHotReview() {
		
		List<Review> list = new ArrayList<Review>();
		
		list = mainservice.HotReview();
		
		List<Member> listmp = new ArrayList<Member>();
		
		listmp = mainservice.memberpic();
	
		List<String> list0 = new ArrayList<String>();
		
		for(Member mp : listmp) {
			list0.add(mp.getM_picRenamed());
		}
		
		Map<String, List<String>> map = new HashMap<String, List<String>>();
		
		List<String> list1 = new ArrayList<String>();
		List<String> list2 = new ArrayList<String>();
		
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
		map.put("pic", list0);
		map.put("content", list1);
		map.put("poster", list2);
		
		
		
		return map;
	}
	
	@RequestMapping("/main/mainGenreM.do")
	@ResponseBody
	public Map<String, List> genreM(@RequestParam int m_no) {
	
		
		List<Play> list = new ArrayList<Play>();
		
		list = mainservice.allPlaySelect();
		
		List<String> tlist = new ArrayList<String>();
		List glist = new ArrayList();
		List<String> ilist = new ArrayList<String>();
		List<String> plist = new ArrayList<String>();
		
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
					
					
					if( 0 == m_no) {
						
							tlist.add(getTagValue("prfnm", eElement));
							glist.add(p.getP_good());
							ilist.add(getTagValue("poster", eElement));
							plist.add(getTagValue("mt20id", eElement) );
					}
					
					if ( m_no > 0) {
						
						List<Member> mlist = mainservice.memberGenrenmG(m_no);
					
					for(int i= 0; i <mlist.get(0).getM_genre().length; i++ ) {
				
						
						if ( mlist.get(0).getM_genre()[i].equals(getTagValue("genrenm", eElement)) ) {
							tlist.add(getTagValue("prfnm", eElement));
							glist.add(p.getP_good());
							ilist.add(getTagValue("poster", eElement));
							plist.add(getTagValue("mt20id", eElement) );			
				
					}
					}
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
		map.put("pnum", plist);
	
		return map;
	}
	
	@RequestMapping("/main/bookmarkcheck.do")
	@ResponseBody
	public List<String> BookMarkC(
						@RequestParam(value="p_num[]") List<String> p_no, @RequestParam(value="m_no") int m_no) {
		List<Bookmark> list = new ArrayList<Bookmark>();

		list = mainservice.BookMarkC(m_no);
		
		List<String> listp = new ArrayList<String>();
	
	
		for(Bookmark b : list) {
			for(String p : p_no) {
				if(b.getP_list().equals(p)) {
					listp.add(p);
				}
			}
		}
	

		return listp;
	}
}
