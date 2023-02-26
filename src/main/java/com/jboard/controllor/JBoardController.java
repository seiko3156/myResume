package com.jboard.controllor;



import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jboard.dto.JBoardVO;
import com.jboard.dto.Paging;
import com.jboard.service.JboardService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class JBoardController {

	@Autowired 
	JboardService js;
	
	@RequestMapping("/")
	public String main() {
		return "index";
	}
	// 문의게시판 리스트
		@RequestMapping("/board")
		public ModelAndView jboard(HttpServletRequest request, HttpSession session){
			
			ModelAndView mav = new ModelAndView();
			
			HashMap<String, Object> paramMap = new HashMap<String, Object>();
			
			paramMap.put("request", request);
			paramMap.put("ref_cursor",null);
			
			js.listJboard(paramMap);
			
			ArrayList<HashMap<String,Object>> list
			= (ArrayList<HashMap<String,Object>>)paramMap.get("ref_cursor");
			System.out.println("중요도는?"+list.get(0).get("MUSTREAD"));
			mav.addObject("listJboard",list);
			mav.addObject("paging",(Paging)paramMap.get("paging"));
			mav.setViewName("/board/board");
			
			return mav;
		}
		//글쓰기폼 이동
		@RequestMapping("writeForm")
		public String write() {
			return "/board/write";
		}
		//파일 업로드폼 이동
		@RequestMapping("/selectimg")
		public String selectimg() {
			return "/board/selectimg";
		}
		//수정 업로드폼 이동
		@RequestMapping("/selectEditImg")
		public String selectEditimg() {
			return "/board/selectEditImg";
		}
		
		@Autowired
		ServletContext context; 
		//파일 업로드
		@RequestMapping(value="/fileupload",method=RequestMethod.POST)
		public String fileupload(Model model, HttpServletRequest request) throws IOException {
			
			String path = context.getRealPath("/image");

			MultipartRequest multi = new MultipartRequest(
					request,path, 5*1024*1024,"UTF-8", new DefaultFileRenamePolicy()
			);

			model.addAttribute("image",multi.getFilesystemName("image"));
			return "/board/completupload";
		}
		//파일수정
		@RequestMapping(value="/fileEditupload",method=RequestMethod.POST)
		public String fileEditupload(Model model, HttpServletRequest request) throws IOException {
			
			String path = context.getRealPath("/image");
			

			MultipartRequest multi = new MultipartRequest(
					request,path, 5*1024*1024,"UTF-8", new DefaultFileRenamePolicy()
			);

			model.addAttribute("image",multi.getFilesystemName("image"));
			return "/board/completEditupload";
		}
		//글쓰기
		@RequestMapping(value="/write", method=RequestMethod.POST)
		public String write(@ModelAttribute("dto")@Valid JBoardVO nboardvo,BindingResult result, Model model) {	
			String url ="/board/write";
			if(result.getFieldError("name")!=null) {
				model.addAttribute("message",result.getFieldError("name").getDefaultMessage());
			}else if(result.getFieldError("pass")!=null) {
				model.addAttribute("message",result.getFieldError("pass").getDefaultMessage());
			}else if(result.getFieldError("subject")!=null) {
				model.addAttribute("message",result.getFieldError("subject").getDefaultMessage());
			}else if(result.getFieldError("content")!=null) {
				model.addAttribute("message",result.getFieldError("content").getDefaultMessage());
			}else {	
				
				if(nboardvo.getMustread()==null) {
					nboardvo.setMustread("N");
				}
				
				if(nboardvo.getSecret()==null) {
					nboardvo.setSecret("N");
				}
				js.insertJboard(nboardvo);
				url="redirect:/board?first=1";
			}
			return url;
		}
		
		//게시판 디테일
		@RequestMapping("/view")
		public ModelAndView view(HttpServletRequest request,
				@RequestParam("jseq") int jseq,
				@RequestParam(value="renum", required=false) String renum){

				ModelAndView mav = new ModelAndView();
				
				 HashMap<String, Object> paramMap = new HashMap<String, Object>();
				 paramMap.put("request", request);
				 paramMap.put("jseq", jseq); paramMap.put("ref_cursor",null);
				 js.oneJboard(paramMap);
				  
				 ArrayList<HashMap<String,Object>> list =
				 (ArrayList<HashMap<String,Object>>)paramMap.get("ref_cursor");
				 
				 mav.addObject("jboard",list.get(0));
				 
				mav.setViewName("/board/view");
				return mav;
			}
		//답변달기
		@RequestMapping("/reply")
		public String reply(HttpServletRequest request,
				@RequestParam("jseq") int jseq,
				@RequestParam("replyjboard") String replyjboard,
				@RequestParam("renum") String renum) {
			
			HashMap<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("jseq", jseq); paramMap.put("replyjboard", replyjboard);
			js.replyInsert(paramMap);
			
			return "redirect:/view?jseq="+jseq+"&renum="+renum;
		}
		
		//수정폼 이동
		@RequestMapping("/editForm")
		public ModelAndView editForm(HttpServletRequest request,
				@RequestParam("jseq") int jseq){

				ModelAndView mav = new ModelAndView();
				
				 HashMap<String, Object> paramMap = new HashMap<String, Object>();
				 paramMap.put("request", request);
				 paramMap.put("jseq", jseq); paramMap.put("ref_cursor",null);
				 js.oneJboard(paramMap);
				  
				 ArrayList<HashMap<String,Object>> list =
				 (ArrayList<HashMap<String,Object>>)paramMap.get("ref_cursor");
				 
				 mav.addObject("jboard",list.get(0));
				 
				mav.setViewName("/board/edit");
				return mav;
			}
		//수정하기
		@RequestMapping(value="/edit", method=RequestMethod.POST)
		public String edit(@ModelAttribute("dto")@Valid JBoardVO nboardvo,BindingResult result, Model model) {	
			String url ="/board/edit";
			if(result.getFieldError("name")!=null) {
				model.addAttribute("message",result.getFieldError("name").getDefaultMessage());
			}else if(result.getFieldError("pass")!=null) {
				model.addAttribute("message",result.getFieldError("pass").getDefaultMessage());
			}else if(result.getFieldError("subject")!=null) {
				model.addAttribute("message",result.getFieldError("subject").getDefaultMessage());
			}else if(result.getFieldError("content")!=null) {
				model.addAttribute("message",result.getFieldError("content").getDefaultMessage());
			}else {	
				
				if(nboardvo.getMustread()==null) {
					nboardvo.setMustread("N");
				}
				
				if(nboardvo.getSecret()==null) {
					nboardvo.setSecret("N");
				}
				js.updateJboard(nboardvo);
				url="redirect:/view?jseq="+nboardvo.getJseq()+"&renum=renum";
			}
			return url;
		}
		//게시글 삭제
		@RequestMapping("/delete")
		public String delete(@RequestParam("jseq") int jseq) {
			
			js.deleteJboard(jseq);
			
			return "redirect:/board?first=1";
		}
		
		
}
