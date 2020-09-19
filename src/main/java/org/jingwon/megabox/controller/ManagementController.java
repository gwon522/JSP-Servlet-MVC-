package org.jingwon.megabox.controller;

import java.io.File;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/management/")
@AllArgsConstructor
public class ManagementController { // 관리 페이지 컨트롤러
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
	
		//영화등록 페이지 호출
	@GetMapping("/addMovie.do")
	public String addMovie() {
		return "/management/addMovie";
	}
	
		//영화 등록 처리
	@PostMapping("/addMovie.do")
	public String addMovie(RedirectAttributes rttr, MovieVO movie,MultipartFile image) {
		log.info("영화등록...."+ movie.getDates());
		movie.setNum(service.getNum());
		String imgPath = "/Users/gwon/Desktop/sist/Projects/springMegabox/src/main/webapp/resources/img/poster/"+movie.getNum();
		log.info(image.getOriginalFilename());
		File folder = new File(imgPath);
		if (!folder.exists()) {
			try {
				folder.mkdir();
				File saveFile = new File(imgPath,movie.getNum()+".jpg");
				image.transferTo(saveFile);
				log.info(saveFile.getName());
				rttr.addFlashAttribute("result", 1);
			} catch (Exception e) {
				log.error(e.getMessage());
				System.out.println("==========================");
				e.printStackTrace();
				rttr.addFlashAttribute("result", -1);
			}
		}
		service.newMovie(movie);
		return "redirect:/management/management.do";
	}
	
	@GetMapping("/detail.do")
	public String movieDetail(Model model, int num) {
		model.addAttribute("vo",service.getMovie(num));
		return "/management/detail";
	}
	
	@GetMapping("/update.do")
	public String movieUpdate(Model model, int num) {
		model.addAttribute("vo", service.getMovie(num));
		return "/management/update";
	}
	
	@PostMapping("/update.do")
	public String movideUpdate(Model model,int num, MovieVO movie) {
		movie.setNum(num);
		model.addAttribute("result", service.setMovie(movie));
		return "redirect:/management/management.do";
	}
	
	@GetMapping("/delete.do")
	public String MovieDelete(int num) {
		log.info(num+"번 게시글 삭제요청");
		service.deleteMovie(num);
		return "redirect:/management/management.do";
	}
	
}
