package org.jingwon.megabox.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.jingwon.megabox.vo.CommentVO;
import org.jingwon.megabox.vo.MovieVO;

public interface MovieService{
	
	public List<MovieVO> mainPageMovieList();
	public List<MovieVO> mainPageCurationList();
	public MovieVO mainPageCuration();
	public List<MovieVO> getMovieLists();
	public List<MovieVO> getMovieList(@Param("type") String type, @Param("query") String search, @Param("check") boolean check);
	public MovieVO getMovie(int seq);
	public void likeUp(int movie, int member);
	public void likeDown(int movie, int member);
	public int comment(int seq, CommentVO commnetVO);
}
