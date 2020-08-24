package org.jingwon.megabox.vo;

import lombok.Data;

@Data
public class MemberVO {
	private int 	seq;		//회원코드
	private int 	type; 		//회원타입  ex) 비회원, 회원, 관리자
	private String 	id;			//아이디 
	private String 	pwd;		//비밀번호
	private String 	name;		//이름		
	private String 	grade;		//회원등급
	private String 	tel;		//전화번호
	private String 	email;		//이메일
	private String 	birth;		//생년월일
	private int 	point;		//포인트
	private int 	count_cou;	//쿠폰수
	private int 	count_show;	//관람권수
	private int 	count_resv;	//예약내역수
	private int 	count_buy;	//구매내역수
}
