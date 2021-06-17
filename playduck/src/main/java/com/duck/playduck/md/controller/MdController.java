package com.duck.playduck.md.controller;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.duck.playduck.md.model.service.MdService;
import com.duck.playduck.md.model.service.MdServiceImpl;
import com.duck.playduck.md.model.vo.Md;
import com.duck.playduck.member.model.vo.Member;
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
	public String Md_buy(
			@RequestParam int dno,
			@RequestParam int mno,
			@RequestParam int num,
			@RequestParam int sum,
			Model model
			) {
	// 장바구니에 MD 추가하기
	
		Md md = mdService.selectOneBasket(dno,mno,num);
		
		if( md == null) {
			int result = mdService.addBasket(dno, mno, num);
		}else {
			int result = mdService.updateBasket(dno,mno,num);
		}
	
	return "redirect:/MD/MD_buy2?mno="+mno;
	}
	
	
	@RequestMapping("/MD/MD_buy2")
	public String Md_buy2(Model model, @RequestParam int mno) {
			
		// 장바구니 리스트 불러오기
		List<Md> MdbasketList = mdService.getbasketList(mno);
		
		// 내 리워드 가져오기
		int reward = mdService.getReward(mno);
		
	
//		System.out.println(MdbasketList);
		 DecimalFormat formatter = new DecimalFormat("###,###");
		
		 System.out.println("내리워드 확인 :" + reward);
		

		 model.addAttribute("getReward", reward);
		 model.addAttribute("formatter",formatter);
		model.addAttribute("baskList",MdbasketList);
	return "MD_buy";
}
	
	// 장바구니에서 수량 수정
	@RequestMapping("/MD/MD_buy3")
	public String Md_buy3(Model model, 
									@RequestParam int dno,
									@RequestParam int mno,
									@RequestParam int num) {
			
		int result = mdService.update2Basket(dno,mno,num);
		
		
	return "redirect:/MD/MD_buy2?mno="+mno;
}
	
	// 장바구니 MD 선택하기 해제하기
		@RequestMapping("/MD/MD_buy4")
		public String Md_buy4(Model model, 
										@RequestParam int dno,
										@RequestParam int mno,
										@RequestParam int b_status
										) {
				
			int result = mdService.update3Basket(dno,mno,b_status);
			
			
			
		return "redirect:/MD/MD_buy2?mno="+mno;
	}
		
	// 사용할 리워드 값 저장하기
		@RequestMapping("/MD/MD_buy5")
		public String Md_buy5(Model model, 
										@RequestParam int w_down,
										@RequestParam int m_no
										) {
			
			if (w_down != 0 ) {
				int result = mdService.updateReward(m_no,w_down);
				
			} 
		
			
			
		return "redirect:/MD/MD_buy2?mno="+m_no;
	}
	
	
// MD 상세보기 페이지
	@RequestMapping("/MD/MD_order")
	public String Md_order(
				@RequestParam int d_no, 
				Model model) {
		
		Md md = mdService.selectOneMd(d_no);
	
		model.addAttribute("md", md);

		return "MD_order";
	}
	
	
	
	
	
	
// MD 메인 페이지 by 수영
	@RequestMapping("/md/md_main.do")
	public String md_main(Model model, @RequestParam(value="cPage", required=false, defaultValue="1") int cPage) {
		
		// 한 페이지당 페이지 수
		int numPerPage = 12;
		
		// 현재 페이지의 게시글 수
		List<Map<String, String>> list = mdService.selectBoardList(cPage, numPerPage);
		
		// 전체 개시글 수
		int totalContents = mdService.selectTotalContents();
		
		// 페이지 처리 HTML 생성하기
		String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "/playduck/md/md_main.do");
		
		model.addAttribute("list", list);
		model.addAttribute("totalContents", totalContents);
		model.addAttribute("numPerPage", numPerPage);
		model.addAttribute("pageBar", pageBar);
		

		return "MD_main";
	}
	
}
