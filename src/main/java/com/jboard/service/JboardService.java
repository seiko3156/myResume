package com.jboard.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jboard.dao.IJboardDao;
import com.jboard.dto.JBoardVO;
import com.jboard.dto.Paging;
@Service
public class JboardService {
	@Autowired
	IJboardDao jdao;
	//게시판
	public void listJboard(HashMap<String, Object> paramMap) {
		
		HttpServletRequest request = (HttpServletRequest)paramMap.get("request");
	      HttpSession session = request.getSession();   
	      
	      if(request.getParameter("first")!=null) {
	         session.removeAttribute("page");
	         session.removeAttribute("key");
	      }
	      
	      int page = 1;
	      if (request.getParameter("page") != null) {
	         page = Integer.parseInt(request.getParameter("page"));
	         session.setAttribute("page", page);
	      } else if (session.getAttribute("page") != null) {
	         page = (Integer) session.getAttribute("page");
	      } else {
	         session.removeAttribute("page");
	      }
	      
	      String key="";
	      if (request.getParameter("key") != null) {
	         key = request.getParameter("key");
	         session.setAttribute("key", key);
	      } else if (session.getAttribute("key") != null) {
	         key = (String) session.getAttribute("key");
	      } else {
	         session.removeAttribute("key");
	      }
	      
	      // 페이징 객체 생성
	      Paging paging = new Paging();
	      paging.setPage(page);
	      paramMap.put("cnt", 0); 
	      paramMap.put("key", key); 
	      jdao.getAllCount(paramMap);
	      int count = (Integer) paramMap.get("cnt"+""); 
	      paging.setTotalCount(count);
	      paging.paging();
	      
	      paramMap.put("startNum", paging.getStartNum() );
	      paramMap.put("endNum", paging.getEndNum() );
	      jdao.getJboardList(paramMap);
	      
	      paramMap.put("paging", paging);
		
	}
	//게시글 입력
	public void insertJboard(@Valid JBoardVO nboardvo) {
		jdao.insertJboard(nboardvo);
		
	}
	//게시글 디테일
	public void oneJboard(HashMap<String, Object> paramMap) {
		HttpServletRequest request = (HttpServletRequest)paramMap.get("request");
		String test="renum";
		String renum = request.getParameter("renum");
		if(!test.equals(renum)) {
		jdao.boardCount(paramMap);
		}
		jdao.oneJboard(paramMap);
		
	}
	//답글달기
	public void replyInsert(HashMap<String, Object> paramMap) {
		
		jdao.replyInsert(paramMap);
		
	}
	//게시글수정
	public void updateJboard(@Valid JBoardVO nboardvo) {
		jdao.updateJboard(nboardvo);
		
	}
	//게시글 삭제
	public void deleteJboard(int jseq) {
		jdao.deleteJboard(jseq);
		
	} 
}
