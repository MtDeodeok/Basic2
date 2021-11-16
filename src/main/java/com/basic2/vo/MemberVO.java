package com.basic2.vo;

import java.time.LocalDate;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String phone;
	private LocalDate registDate;
	private int grade;
}
