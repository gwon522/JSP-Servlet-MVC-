package org.jingwon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.jingwon.megabox.vo.Movie;

public interface MovieMapper {
	
	public List<Movie> getMovieList();
	
}
