package org.jingwon.megabox.controller;

import org.jingwon.megabox.vo.MovieVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/management/")
@AllArgsConstructor
public class ManagementController { // 관리 페이지 하나 생성해야됨
	//관리자 페이지 이동
	@RequestMapping("/management.do")
	public String management() {
		return "management/management";
	}
	//영화관련 관리.
	@GetMapping("/addMovie.do")
	public String addMovie() {
		return "addMovie";
	}
	@PostMapping("/addMovie.do")
	public String addMovie(RedirectAttributes rttr, MovieVO movieVO) {
		return "redirect:/management.do";
	}
	
	@GetMapping("/updateMovie.do")
	public String updateMovie(MovieVO movie_seq) {
		return "updateMovie";
	}
	
	@PostMapping("/updateMovie.do")
	public String updateMovie(RedirectAttributes rttr, MovieVO movieVO) {
//		rttr.addFlashAttribute("result",service.updateMovie());
		return "redirect:/management.do";
	}
	
	
	//상품관련 관리.
	@RequestMapping("/addStore.do")
	public String addStore() {
		return "addStore";
	}
	@RequestMapping("/updateStore.do")
	public String updateStore() {
		return "updateStore";
	}
	@RequestMapping("/deleteStore.do")
	public String deleteStore() {
		return "redirect:/management.do";
	}
}
