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
	
	//메인 페이지 영화 순위별 출력
	@Override
	public List<MovieVO> mainPageMovieList() {
		log.info("mainPageMovieList....");
		return mapper.selectMainPageMovieList();
	}
	
	//메인 페이지 큐레이션 영화 순위별 출력
	@Override
	public List<MovieVO> mainPageCurationList() {
		log.info("mainPageCurationList...");
		return mapper.selectMainPageCurationList();
	}
	
	//메인 페이지 주력 큐레이션 출력 
	@Override
	public MovieVO mainPageCuration() {
		log.info("mainPageCuration...");
		return mapper.selectMainPageCuration();
	}
	
	//영화 목록 출력
	@Override
	public List<MovieVO> getMovieLists() {
		log.info("movieList....");
		return mapper.selectMovieLists();
	}

	//영화 정렬, 검색별 출력
	@Override
	public List<MovieVO> getMovieList(@Param("type") String type, @Param("query") String search, @Param("check") boolean check) {
		log.info("movieList.. type : "+type+" 검색어 : "+search+" 날짜순 정렬 :"+check);
		return mapper.selectMovieList(type, search, check);
	}

	//해당 영화 출력
	@Override
	public MovieVO getMovie(int seq) {
		log.info("movie...  seq : "+seq);
		return mapper.selectMovie(seq);
	}

	//해당영화 좋아요
	@Override
	public void likeUp(int movie, int member) {
		log.info("likeUp... m_seq : "+movie+" m_seq : "+member);
		mapper.insertLike(movie, member);
	}

	//해당영화 좋아요 취소
	@Override
	public void likeDown(int movie, int member) {
		log.info("likeDown... m_seq : "+movie+" m_seq : "+member);
		mapper.deleteLike(movie, member);
	}
	
	//감상평  ( 트랜젝션처리 해야됨 )
	@Override
	public int comment(int seq, CommentVO commentVO) {
		log.info("comment...");
//		if (condition) {
//			mapper.insertComment(seq, commentVO);
//			return 1;
//		}; //만약 등록된 코멘트가 없으면 작성되게 해야됨
		return -1;
	}
	
	//새영화 등록
	@Override
	public void newMovie(MovieVO movie) {
		log.info("영화등록"+ movie);
		mapper.insertMovie(movie);
	}
	
	//영화 수정
	@Override
	public int setMovie(MovieVO movie) {
		return mapper.updateMovie(movie);
	}
	
	//영화 삭제
	@Override
	public int deleteMovie(int num) {
		return mapper.deleteMovie(num);
	}

	@Override
	public int getNum() {
		return mapper.selectNextNum();
	}

}
