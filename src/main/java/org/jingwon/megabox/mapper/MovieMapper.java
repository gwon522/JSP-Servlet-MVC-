package org.jingwon.megabox.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.jingwon.megabox.vo.CommentVO;
import org.jingwon.megabox.vo.MovieVO;

public interface MovieMapper {
	public List<MovieVO> selectMainPageMovieList();
	public List<MovieVO> selectMainPageCurationList();
	public MovieVO selectMainPageCuration();
	public List<MovieVO> selectMovieLists();
	public List<MovieVO> selectMovieList(@Param("type") String type,@Param("query") String search, @Param("check") boolean check);
	public MovieVO selectMovie(@Param("seq_movie") int movieSeq);
	
	public void insertLike(@Param("seq_movie") int movie, @Param("seq_member") int member);
	
	public void deleteLike(@Param("seq_movie") int movie, @Param("seq_member") int member);
	
	public void insertMovie(MovieVO movieVO);
	public void updateMovie(MovieVO movieVO);
	public void insertComment(int seq, CommentVO commentVO);
}
