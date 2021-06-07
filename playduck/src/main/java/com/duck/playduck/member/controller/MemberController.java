package com.duck.playduck.member.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.duck.playduck.member.model.service.MemberService;
import com.duck.playduck.member.model.vo.Member;

@Controller
public class MemberController {


	@Autowired 
	MemberService memberService;
	
	@Autowired
    MailSendService mss;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;

	
	@RequestMapping("/member/memberInsert.do")
	public String memberInsert(Member m, @RequestParam String m_date1) {
		
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
        
        
        memberService.insertMember(m);
		
		return "";
	}
	
	@RequestMapping("/member/signUpConfirm.do")
	 public String signUpConfirm(@RequestParam Map<String, String> map){
	    //email, authKey 가 일치할경우 authStatus 업데이트
	    memberService.signUpConfirm(map);
	    return "";
	}
	
}
