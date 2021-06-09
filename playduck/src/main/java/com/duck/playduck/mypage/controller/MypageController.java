package com.duck.playduck.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.duck.playduck.member.model.vo.Member;
import com.duck.playduck.mypage.model.service.MypageService;
import com.duck.playduck.review.model.vo.Review;



@SessionAttributes({"member"})
@Controller
public class MypageController {
	
	@Autowired
	MypageService mypageService;
	

	@RequestMapping("/mypage/mypage.do")
	public String mypage(HttpServletRequest req, Model model) {
		
		Member m = (Member)req.getSession().getAttribute("member");
		
	// 작성한 리뷰 개수 받아오기
		
		int review = mypageService.selectCount(m);
			
		// System.out.println("review결과 : " + review);
			
		model.addAttribute("review", review);
					
	// 내 리워드 받아오기
		
		int reward = mypageService.selectReward(m);
		System.out.println("reward 결과 : " + reward);
		
		model.addAttribute("reward", reward);
		
		return "myPage";
	}
	
	// 프로필 이미지 DB에 INSERT
	@RequestMapping("/mypage/profileImg.do")
	public String profileImg(Model model, HttpServletRequest req, @RequestParam(value="profileImg", required=false) MultipartFile[] upFiles) {
		
		Member m = (Member)req.getSession().getAttribute("member");
		
		// 1. 파일 저장 경로 및 파일 정보를 담을 객체 생성
			String savePath = req.getServletContext().getRealPath("/resources/profileImg");
			
			
			String originName = null;
			String changeName = null;
			
		// 2. 파일 업로드
			for(MultipartFile f : upFiles) {
				
				if(f.isEmpty() == false) {
					// 파일이 비어있지 않다면(파일이 존재한다면)
							
				// 3. 파일 이름 변경
					originName = f.getOriginalFilename(); // 파일 원래 이름
					changeName = fileNameChanger(originName); // 파일 이름 변경
					
					try {	// 파일이 존재하지 않거나 깨진 파일일 수 있으므로 트라이캐치!
							f.transferTo(new File(savePath + "/" + changeName));
									
					} catch (IllegalStateException | IOException e) {
		
							e.printStackTrace();
					}
									
				// 4. Member 에 담기
					
					m.setM_pic(originName);
					m.setM_picRenamed(changeName);	
					
				}
						
			}
		
			// 5. Member DB에 저장
			int result = mypageService.insertPfImg(m);	// int로 결과 출력
			
			model.addAttribute("member", m);
			
			/******************************************/
			
			
			
			return "myPage";
			
	}

	public String fileNameChanger(String oldFileName) {

			String ext = oldFileName.substring(oldFileName.lastIndexOf(".") + 1);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
			int rnd = (int)(Math.random() * 1000);

			return sdf.format(new Date(System.currentTimeMillis())) + "_" + rnd + "." + ext;
			
		}

	
}
