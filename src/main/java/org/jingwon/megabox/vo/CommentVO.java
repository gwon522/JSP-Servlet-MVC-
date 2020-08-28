package org.jingwon.megabox.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CommentVO {
	private int 	seq;
	private int 	reserve;
	private int 	assess;
	private int 	assess2;
	private int 	score;
	private String 	content;
	private int 	likes;
	private Date 	regidate;
}
