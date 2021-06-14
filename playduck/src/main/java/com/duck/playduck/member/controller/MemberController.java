package com.duck.playduck.member.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.duck.playduck.member.model.service.MemberService;
import com.duck.playduck.member.model.vo.Member;
@SessionAttributes({"member"})
@Controller
public class MemberController {

	@Autowired
    private JavaMailSenderImpl mailSender;

	@Autowired 
	MemberService memberService;
	
	@Autowired
    MailSendService mss;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;

	
	@RequestMapping("/member/memberInsert.do")
	public String memberInsert(SessionStatus status, Member m, @RequestParam String m_date1, Model model) {
		
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
        status.setComplete();
        
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
		
		String msg= "";
		String loc= "/";
		
		if(result!=null) {
			if( bcryptPasswordEncoder.matches(m_pwd, result.getM_pwd())) {
				// 로그인 성공 (1:일반회원 2:리워드)
				if(result.getM_status().trim().equals("1") || result.getM_status().trim().equals("2")) {
					msg="로그인 성공!";
					model.addAttribute("member",result);
					
					System.out.println("회원 정보 : " + result);
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
	
	
	
	// 비밀번호 찾기 부분 by수영
	@RequestMapping("/member/findPwd.do")
	public ModelAndView findPwd(HttpSession session, @RequestParam String m_id, @RequestParam String m_email , Model model) throws IOException {
		
		// 인증번호 발송
		Member vo = memberService.selectMember(m_email);
		 
		if(vo != null) {
			Random r = new Random();
			int num = r.nextInt(999999); // 랜덤난수설정
			
			if (vo.getM_id().equals(m_id) && vo.getM_email().equals(m_email)) {
				session.setAttribute("email", vo.getM_email());
				session.setAttribute("m_id", vo.getM_id());
				
				System.out.println("세션확인 : " + session);
				
				String setfrom = vo.getM_email(); 
				String tomail = m_email; //받는사람
				String title = vo.getM_name() + "님의 비밀번호변경 인증 이메일 입니다"; 
				String content = System.getProperty("line.separator") + "안녕하세요 회원님" + System.getProperty("line.separator")
						+ vo.getM_name() + "님의 비밀번호찾기(변경) 인증번호는 " + num + " 입니다." + System.getProperty("line.separator"); // 

				try {
					MimeMessage message = mailSender.createMimeMessage();
					MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "utf-8");

					messageHelper.setFrom(setfrom); 
					messageHelper.setTo(tomail); 
					messageHelper.setSubject(title);
					messageHelper.setText(content); 

					mailSender.send(message);
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}

				ModelAndView mv = new ModelAndView();
				mv.setViewName("pw_auth");
				
				mv.addObject("num", num);
				return mv;
			}else {
				
				ModelAndView mv = new ModelAndView();
				mv.setViewName("common/msg");
				mv.addObject("loc", "/index_findView.do");
				mv.addObject("msg", "아이디나 이메일이 일치하지 않습니다.");
				return mv;
			}
			}else {
				ModelAndView mv = new ModelAndView();
				mv.setViewName("common/msg");
				mv.addObject("loc", "/index_findView.do");
				mv.addObject("msg", "등록되지 않는 이메일 입니다.");
				return mv;
			}	
		// --------> 여기까지가 인증번호 발송 기능 ----------------------	
		//return "findPwd";	
	}
	
	// 오류 메시지 전송 후 모달창을 다시 띄우기 위한 기능
	@RequestMapping("/index_findView.do")
	public String findView() {
		return "index_findView";
	}
	
	//이메일 인증번호 확인
	@RequestMapping("/member/pw_set.do")
	public String pw_set(@RequestParam(value="email_injeung") String email_injeung,
						 @RequestParam(value = "num") String num, Model model) throws IOException{
			
			if(email_injeung.equals(num)) {
				return "findPwd";
			}
			else {
				
				model.addAttribute("loc", "/index_findView.do");
				model.addAttribute("msg", "아이디나 이메일이 일치하지 않습니다.");
				
				return "common/msg";
			}
	} 
	
	// 새 비밀번호 업데이트
	@RequestMapping("/member/changePwd.do")
	public String changePwd(Member member , Model model, HttpSession session, SessionStatus status) throws IOException {
		
		String pass1 = member.getM_pwd(); 					// 원래 비밀번호
		String pass2 = bcryptPasswordEncoder.encode(pass1);		// 암호화 처리
		
		member.setM_pwd(pass2);
		
		int result = memberService.pwdUpdate(member);
		System.out.println("비밀번호 변경결과" + result);
		
		if(result == 1) {
			String msg= "비밀번호 변경이 완료되었습니다!";
    		String loc= "/";
    	    model.addAttribute("msg",msg);
    	    model.addAttribute("loc",loc);
    	    
 
    	    status.setComplete();	// 세션 강제 종료
    	    
    	    return "common/msg";
		}
		else {
			System.out.println("pw_update"+ result);
			
			model.addAttribute("loc", "/index_loginAgain.do");
			model.addAttribute("msg", "인증번호가 일치하지 않습니다.");
			
			return "findPwd";
		}
		
		
	}
	// 오류 메시지 전송 후 모달창을 다시 띄우기 위한 기능
		@RequestMapping("/index_loginAgain.do")
		public String loginAgain() {
			return "index_loginAgain";
		}
	
}
