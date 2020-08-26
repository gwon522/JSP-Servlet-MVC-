package org.jingwon.megabox.service;

import java.util.List;

import org.jingwon.megabox.vo.MovieVO;

public interface MovieService{
	
	public List<MovieVO> mainPageMovieList();
	public List<MovieVO> mainPageCurationList();
	public MovieVO mainPageCuration();
	
	public List<MovieVO> getMovieList(int type, String movie, boolean release_date);
	public MovieVO getMovie(int seq);
	public void likeUp(int movie, int member);
	public void likeDown(int movie, int member);
}
