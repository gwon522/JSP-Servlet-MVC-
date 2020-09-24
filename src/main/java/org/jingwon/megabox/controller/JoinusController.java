package org.jingwon.megabox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/joinus/*")
@AllArgsConstructor
public class JoinusController {
	
	@GetMapping("/login.do")
	public void login(String error, String logout, Model model) {
		
	}
	
}
