package org.jingwon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
//	
//	@Setter(onMethod_ = @Autowired)
//	private Movie movie;
	
	@RequestMapping("main.do")
	public String home() {
		
		return "main";
	}
	
}
