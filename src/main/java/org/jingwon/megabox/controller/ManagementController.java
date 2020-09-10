package org.jingwon.megabox.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.jingwon.megabox.service.MovieServiceImpl;
import org.jingwon.megabox.vo.MovieVO;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/management/")
@AllArgsConstructor
public class ManagementController { // 관리 페이지 하나 생성해야
	private MovieServiceImpl service;
	// 폼에서 date형식을 받기 위한 initBinder ->dates란 변수명으로 들어올때 실행된다.
    @InitBinder
    protected void initBinder(WebDataBinder binder){
        DateFormat  dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class,"dates", new CustomDateEditor(dateFormat,true));
    }
	
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
	public String addMovie(MovieVO movie) {
		log.info("영화등록...."+ movie.getDates());
		service.setMovie(movie);
		return "redirect:/managament.do";
	}
	@GetMapping("/detail.do")
	public String movieDetail(Model model, int num) {
		model.addAttribute("vo",service.getMovie(num));
		return "/management/detail";
	}
	//상품관련 관리.( 추가,세부페이지 내에서 수정 및 삭제)
}
