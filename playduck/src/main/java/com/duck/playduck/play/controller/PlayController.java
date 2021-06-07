package com.duck.playduck.play.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.playduck.play.model.service.PlayService;

@Controller
public class PlayController {
	
	@Autowired
	PlayService playService;
	
	
	@RequestMapping("/list/playlist.do")
	public String selectPlayList(){
		
		allplay = playService.selectPlayList();
		
		return"list";
	}
}
