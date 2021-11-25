package com.basic2.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.basic2.service.BoardService;
import com.basic2.service.CommentService;
import com.basic2.vo.BoardVO;
import com.basic2.vo.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class BoardController {
	
	private final BoardService bs;
	private final CommentService cs;
	
	@GetMapping("/board")
	public String board(HttpSession session, Model model) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		if(member!=null) {
			model.addAttribute("loginMember",member);
		}
		model.addAttribute("boardList",bs.selectAll());
		return "board";
	}
	
	@GetMapping("writeLoginCheck")
	public String writeLoginCheck(HttpSession session) {
		if(session.getAttribute("memberID")==null) {
			return "board";
		}
		return "/write";
	}
	
	@GetMapping("/write")
	public void write() {
		
	}
	
	@PostMapping("write")
	public String write(HttpSession session, BoardVO boardvo) {
		boardvo.setMemberid((String) session.getAttribute("memberID"));
		
		bs.createContents(boardvo);
		
		return "redirect:/board";
	}
	
	@PostMapping("pageView")
	public String detail(Model model,String title, int idx) {
		model.addAttribute("detail", bs.selectTitle(title,idx));
		model.addAttribute("boardComment", cs.selectBoardComment(idx));
		return "/pageView";
	}

	
	
	@PostMapping("updateContents")
	public String updateContents(BoardVO boardvo) {
		bs.updateContents(boardvo);
		return "redirect:/board";
	}
	
	@PostMapping("deleteContents")
	public String deleteContents(String memberid, int idx) {
		cs.deleteBoardComment(idx);
		bs.deleteContents(memberid, idx);
		return "redirect:/board";
	}
	
}
