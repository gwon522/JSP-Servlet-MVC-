package org.jingwon.megabox.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.jingwon.megabox.vo.MovieVO;

public interface MovieMapper {
	public List<MovieVO> selectMainPageMovieList();
	
	public List<MovieVO> selectMovieList(@Param("type_seq") int type);
	
	public MovieVO selectMovie(@Param("seq") int movieSeq);
	
	public void insertLike(@Param("seq_movie") int movie, @Param("seq_member") int member);
	
	public void deleteLike(@Param("seq_movie") int movie, @Param("seq_member") int member);
	
	public void insertMovie(MovieVO movieVO);
	public void updateMovie(MovieVO movieVO);
}
