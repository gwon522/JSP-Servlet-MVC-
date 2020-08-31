package org.jingwon.megabox.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.jingwon.megabox.mapper.MovieMapper;
import org.jingwon.megabox.vo.CommentVO;
import org.jingwon.megabox.vo.MovieVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MovieServiceImpl implements MovieService{
	
	@Setter(onMethod_ = @Autowired)
	private MovieMapper mapper;
	
	@Override
	public List<MovieVO> mainPageMovieList() {
		log.info("mainPageMovieList....");
		return mapper.selectMainPageMovieList();
	}
	@Override
	public List<MovieVO> mainPageCurationList() {
		log.info("mainPageCurationList...");
		return mapper.selectMainPageCurationList();
	}
	
	@Override
	public MovieVO mainPageCuration() {
		log.info("mainPageCuration...");
		return mapper.selectMainPageCuration();
	}

	@Override
	public List<MovieVO> getMovieList(@Param("type") String type, @Param("query") String search, @Param("check") boolean check) {
		log.info("movieList.. type : "+type+" 검색어 : "+search+" 날짜순 정렬 :"+check);
		return mapper.selectMovieList(type, search, check);
	}

	@Override
	public MovieVO getMovie(int seq) {
		log.info("movie...  seq : "+seq);
		return mapper.selectMovie(seq);
	}

	@Override
	public void likeUp(int movie, int member) {
		log.info("likeUp... m_seq : "+movie+" m_seq : "+member);
		mapper.insertLike(movie, member);
	}

	@Override
	public void likeDown(int movie, int member) {
		log.info("likeDown... m_seq : "+movie+" m_seq : "+member);
		mapper.deleteLike(movie, member);
	}
	@Override
	public int comment(int seq, CommentVO commentVO) {
		log.info("comment...");
//		if (condition) {
//			mapper.insertComment(seq, commentVO);
//			return 1;
//		}; //만약 등록된 코멘트가 없으면 작성되게 해야됨
		return -1;
	}
}
