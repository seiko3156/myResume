package com.jboard.dto;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class JBoardVO {

	@NotNull(message="이름을 입력하세요")
	@NotEmpty(message="이름을 입력하세요")
	private String name;
	@NotNull(message="비밀번호를 입력하세요")
	@NotEmpty(message="비밀번호를 입력하세요")
	private String pass;
	@NotNull(message="제목을 입력하세요")
	@NotEmpty(message="제목을 입력하세요")
	private String subject;
	@NotNull(message="내용을 입력하세요")
	@NotEmpty(message="내용을 입력하세요")	
	private String content;
	
	
	private int jseq;
	private String image;	
	private String mustread;	
	private String secret;
	
	
}
