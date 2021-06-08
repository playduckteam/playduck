package com.duck.playduck.curation.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.duck.playduck.curation.model.vo.Curation;

@Controller
public class CurationController {
	
	@RequestMapping("/curation/curationForm.do")
	public String curationForm() {
		
		return "Curation_write";
		
	}
	
	@RequestMapping("/curation/curationWrite.do")
	public String insertCuration(Curation curation, Model model, HttpServletRequest req,
			@RequestParam(value="c_pic_file") MultipartFile[] upFiles) {
		System.out.println(curation);

//		// 1. 파일 저장 경로 및 파일 정보를 담을 객체 생성
//				String savePath = req.getServletContext().getRealPath("/resources/curation");
//				List<Curation> attachList = new ArrayList<>();
//				
//				// 2. 파일 업로드
//				for(MultipartFile f : upFiles) {
//					
//					if(f.isEmpty() == false) {
//						// 파일이 비어있지 않다면
//						
//						// 3. 파일 이름 변경
//						String originName = f.getOriginalFilename(); // 파일 원래 이름
//						String changeName = fileNameChanger(originName); // 파일 이름 변경
//						
//						try {
//							f.transferTo(new File(savePath + "/" + changeName));
//						} catch (IllegalStateException | IOException e) {
//
//							e.printStackTrace();
//						}
//						
//						// 4. attachList에 담기
//						Attachment a = new Attachment();
//						a.setOriginalFileName(originName);
//						a.setRenamedFileName(changeName);
//						
//						attachList.add( a );
//					}
//					
//				}
//				
//				// 5. 게시글 DB에 저장
//				int result = curationService.insertCuration(curation);
//				
			
				return "Curation_detail";
				
	}
	

}
