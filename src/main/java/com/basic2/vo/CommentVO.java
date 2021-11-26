package com.basic2.vo;

import java.time.LocalDate;

import lombok.Data;

@Data
public class CommentVO {
	private int id;
	private String comment;
	private LocalDate writeDate;
	private LocalDate modifyDate;
	private String memberid;
	private int boardidx;
}
