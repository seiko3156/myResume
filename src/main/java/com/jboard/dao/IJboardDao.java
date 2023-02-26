package com.jboard.dao;

import java.util.HashMap;

import javax.validation.Valid;

import org.apache.ibatis.annotations.Mapper;

import com.jboard.dto.JBoardVO;

@Mapper
public interface IJboardDao {
	//페이징 카운트 
	void getAllCount(HashMap<String, Object> paramMap);
	//게시판 리스트
	void getJboardList(HashMap<String, Object> paramMap);
	//게시판 글쓰기
	void insertJboard(@Valid JBoardVO nboardvo);
	//조회수 증가
	void boardCount(HashMap<String, Object> paramMap);
	//글 디테일
	void oneJboard(HashMap<String, Object> paramMap);
	//답글달기
	void replyInsert(HashMap<String, Object> paramMap);
	//게시글수정
	void updateJboard(@Valid JBoardVO nboardvo);
	//게시글 삭제
	void deleteJboard(int jseq);

}
