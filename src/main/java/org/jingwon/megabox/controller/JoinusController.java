package org.jingwon.megabox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/joinus/*")
public class JoinusController {
	
	@GetMapping("/login.do")
	public void login(String error, String logout, Model model) {
		log.info("error : "+ error);
		log.info("logout : "+ logout);
		
		if (error != null) {
			model.addAttribute("error","아이디와 비밀번호를 확인해주세요");
		}
		if (logout != null) {
			model.addAttribute("logout","로그아웃 되었습니다.");
		}
	}
//	@RequestMapping("/logout.do")
//	public void logout() {
//		log.info("logout");
//	}
	
	
}
