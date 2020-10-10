package org.jingwon.megabox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/joinus/*")
public class JoinusController {
	
	@GetMapping("/login.do")
	public String login(String error, String logout, RedirectAttributes rtts) {
		log.info("error : "+ error);
		log.info("logout : "+ logout);
		
		if (error != null) {
			rtts.addFlashAttribute("login","fail");
		}
		if (logout != null) {
			rtts.addFlashAttribute("logout","ok");
		}
		return "redirect:/main.do";
	}

	
	
}
