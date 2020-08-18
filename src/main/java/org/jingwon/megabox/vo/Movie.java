package org.jingwon.megabox.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class Movie {
	private int 	rank;			//예매율에 따른 랭크
	private int 	num;			//영화코드
	private String 	movie; 			//영화이름
	private String 	genre; 			//장르
	private String 	age;			//상영나이
	private String 	director;		//감독명
	private Date 	date;			//개봉일
	private String 	actors;			//출연진
	private int 	runTime;		//러닝타임
	private String 	summary;		//줄거리
	private String 	img;			//포스터
	private long 	view;			//누적관객수
	private String 	type;			//큐레이션
	private long 	like;			//좋아요수
}
