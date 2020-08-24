package org.jingwon.megabox.service;

import java.util.List;

import org.jingwon.megabox.vo.MovieVO;

public interface MovieService{
	
	public List<MovieVO> mainPageMovieList();
	public List<MovieVO> getMovieList(int type);
	public MovieVO getMovie(int seq);
	public void likeUp(int movie, int member);
	public void likeDown(int movie, int member);
}
