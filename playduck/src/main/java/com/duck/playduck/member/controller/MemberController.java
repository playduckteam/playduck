package com.duck.playduck.member.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.duck.playduck.member.model.service.MemberService;
import com.duck.playduck.member.model.vo.Member;
@SessionAttributes({"member"})
@Controller
public class MemberController {


	@Autowired 
	MemberService memberService;
	
	@Autowired
    MailSendService mss;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;

	
	@RequestMapping("/member/memberInsert.do")
	public String memberInsert(Member m, @RequestParam String m_date1, Model model) {
		
		String pass1 = m.getM_pwd(); 					// 원래 비밀번호
		String pass2 = bcryptPasswordEncoder.encode(pass1);		// 암호화 처리
		
		m.setM_pwd(pass2);
		
		// 이메일 join
		String newEmail = String.join("@", m.getM_email().split(","));
		m.setM_email(newEmail);
		// phone join
		String newPhone = String.join("-", m.getM_phone().split(","));
		m.setM_phone(newPhone);
		// address join
		String address = String.join("/", m.getM_address().split(","));
		m.setM_address(address);
		
		String[] dateArr = m_date1.split(",");
		m_date1 = String.join("-", dateArr);
		
		SimpleDateFormat fm= new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			m_date1 = fm.format(fm.parse(m_date1));
			Date date = Date.valueOf(m_date1);
			
			m.setM_date(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		//임의의 authKey 생성 & 이메일 발송
        String authKey = mss.sendAuthMail(m.getM_email());
        m.setM_status(authKey);
        Map<String, String> map = new HashMap<String, String>();
        map.put("email", m.getM_email());
        map.put("m_status", m.getM_status());
        
        
        int result = memberService.insertMember(m);
        
        if(result!=0) {
        	String msg= "회원가입이 완료되었습니다. 이메일 인증후 사용해주세요!";
    		String loc= "/";
    	    model.addAttribute("msg",msg);
    	    model.addAttribute("loc",loc);
        }
        
	    return "common/msg";
	}
	
	@RequestMapping("/member/signUpConfirm.do")
	 public String signUpConfirm(@RequestParam Map<String, String> map, Model model){
	    //email, authKey 가 일치할경우 authStatus 업데이트
	    int result= memberService.signUpConfirm(map);
	    if(result!=0) {
	    	String msg= "이메일 인증이 완료되었습니다. 로그인 후 사용해주세요!";
			String loc= "/";
		    model.addAttribute("msg",msg);
		    model.addAttribute("loc",loc);
	    }	    
	    return "common/msg";
	}
	
	@RequestMapping("/member/memberLogin.do")
	public String memberLogin(@RequestParam String m_id,@RequestParam String m_pwd, Model model) {
		
		Member result = memberService.selectOneMember(m_id);
		System.out.println(result.getM_status());
		
		String msg= "";
		String loc= "/";
		
		if(result!=null) {
			if( bcryptPasswordEncoder.matches(m_pwd, result.getM_pwd())) {
				// 로그인 성공 (1:일반회원 2:리워드)
				if(result.getM_status().trim().equals("1") || result.getM_status().trim().equals("2")) {
					msg="로그인 성공!";
					model.addAttribute("member",result);
				// (3: 탈퇴된 계정)
				} else if(result.getM_status().trim().equals("3")) {
					msg="탈퇴된 계정입니다. 관리자에게 문의하세요!";
				// (6글자 : 이메일인증전)
				} else {
					msg="이메일 인증을 해주세요!";
				}
			} else {
				msg="비밀번호가 틀립니다!";
			}
		} else {
			msg="존재하지 않는 아이디입니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("loc", loc);
		
		return "common/msg";
	}
	
}
