 package org.jingwon.megabox.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MovieVO {
	private int 	num;			//영화코드
	private String 	movie; 			//영화이름
	private String 	genre; 			//장르
	private String 	age;			//상영나이
	private String 	director;		//감독명
	private Date 	dates;			//개봉일
	private String 	actors;			//출연진
	private int 	runTime;		//러닝타임
	private String 	summary;		//줄거리
	private String 	img;			//포스터
	private long 	total_views;	//누적관객수
	private String 	type;			//큐레이션
	private long 	likes;			//좋아요수
}
