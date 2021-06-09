package com.duck.playduck.curation.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.duck.playduck.curation.model.service.CurationService;
import com.duck.playduck.curation.model.vo.Curation;

@Controller
public class CurationController {
	
	@Autowired
	CurationService curationService;
	
	@RequestMapping("/curation/curationForm.do")
	public String curationForm() {
		
		return "Curation_write";
		
	}
	
	@RequestMapping("/curation/curationWrite.do")
	public String insertCuration(Curation curation, Model model, HttpServletRequest req,
			@RequestParam(value="c_pic_file") MultipartFile[] upFiles) {

		
		// 1. 파일 저장 경로 및 파일 정보를 담을 객체 생성
			String savePath = req.getServletContext().getRealPath("/resources/curation");
			
			
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
									
				// 4. curation 에 담기
					
					curation.setC_pic(originName);
					curation.setC_picrenamed(changeName);	
					
				}
						
			}
			System.out.println(curation);
			// 5. DB에 저장
			int result = curationService.insertCuImg(curation);	// int로 결과 출력
			
			model.addAttribute("curation", curation);
			
			/******************************************/
			System.out.println(curation);
			
			
				return "Curation_detail";
				
	}

	public String fileNameChanger(String oldFileName) {

			String ext = oldFileName.substring(oldFileName.lastIndexOf(".") + 1);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
			int rnd = (int)(Math.random() * 1000);

			return sdf.format(new Date(System.currentTimeMillis())) + "_" + rnd + "." + ext;
			
		}

	

}
