package org.jingwon.megabox.controller;

import org.jingwon.megabox.service.MovieServiceImpl;
import org.jingwon.megabox.vo.MovieVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class ManagementController { // 관리 페이지 하나 생성해야
	private MovieServiceImpl service;
	
	//관리자 페이지 이동
	@RequestMapping("/management.do")
	public String management(Model model) {
		log.info("관리자페이지 호출 됨..");
		model.addAttribute("list", service.getMovieLists());
		return "managemain";
	}
	
	//영화관련 관리.( 추가,세부페이지 내에서 수정 및 삭제)
	@GetMapping("/addMovie.do")
	public String addMovie() {
		return "/management/addMovie";
	}
	@PostMapping("/addMovie.do")
	public String addMovie(MovieVO movie, RedirectAttributes rttr) {
		log.info("영화등록...."+ movie);
		service.setMovie(movie);
		rttr.addFlashAttribute("msg",movie.getMovie());
		return "redirect:/managament.do";
	}
	@GetMapping("/detail.do")
	public String movieDetail(Model model, int seq) {
		model.addAttribute("vo",service.getMovie(seq));
		return "/management/detail";
	}
	//상품관련 관리.( 추가,세부페이지 내에서 수정 및 삭제)
}
