package org.jingwon.megabox.service;

import java.util.List;

<<<<<<< HEAD
import org.apache.ibatis.annotations.Param;
import org.jingwon.megabox.vo.CommentVO;
=======
>>>>>>> 7d10c9bf9c88e682f9a576222036c0fcdb9fac6f
import org.jingwon.megabox.vo.MovieVO;

public interface MovieService{
	
	public List<MovieVO> mainPageMovieList();
	public List<MovieVO> mainPageCurationList();
	public MovieVO mainPageCuration();
	
<<<<<<< HEAD
	public List<MovieVO> getMovieList(@Param("type") String type, @Param("query") String movie, @Param("dates") boolean release_date);
	public MovieVO getMovie(int seq);
	public void likeUp(int movie, int member);
	public void likeDown(int movie, int member);
	public int comment(int seq, CommentVO commnetVO);
=======
	public List<MovieVO> getMovieList(int type, String movie, boolean release_date);
	public MovieVO getMovie(int seq);
	public void likeUp(int movie, int member);
	public void likeDown(int movie, int member);
>>>>>>> 7d10c9bf9c88e682f9a576222036c0fcdb9fac6f
}
