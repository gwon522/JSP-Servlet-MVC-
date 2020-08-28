package org.jingwon.megabox.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
<<<<<<< HEAD
import org.jingwon.megabox.vo.CommentVO;
=======
>>>>>>> 7d10c9bf9c88e682f9a576222036c0fcdb9fac6f
import org.jingwon.megabox.vo.MovieVO;

public interface MovieMapper {
	public List<MovieVO> selectMainPageMovieList();
	public List<MovieVO> selectMainPageCurationList();
	public MovieVO selectMainPageCuration();
	
<<<<<<< HEAD
	public List<MovieVO> selectMovieList(@Param("type") String type,@Param("query") String search,@Param("dates") boolean release_date);
=======
	public List<MovieVO> selectMovieList(@Param("type_seq") int type, String movie, boolean release_date);
>>>>>>> 7d10c9bf9c88e682f9a576222036c0fcdb9fac6f
	
	public MovieVO selectMovie(@Param("seq") int movieSeq);
	
	public void insertLike(@Param("seq_movie") int movie, @Param("seq_member") int member);
	
	public void deleteLike(@Param("seq_movie") int movie, @Param("seq_member") int member);
	
	public void insertMovie(MovieVO movieVO);
	public void updateMovie(MovieVO movieVO);
<<<<<<< HEAD
	
	public void insertComment(int seq, CommentVO commentVO);
=======

>>>>>>> 7d10c9bf9c88e682f9a576222036c0fcdb9fac6f
}
