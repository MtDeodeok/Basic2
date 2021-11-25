package com.basic2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.basic2.service.BoardService;
import com.basic2.service.CommentService;
import com.basic2.vo.CommentVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class CommentController {
	
	private final CommentService cs;
	private final BoardService bs;
	
	@GetMapping("review")
	public void review() {
		
	}
	
	@GetMapping("createComment")
	public void createComment() {
		
	}
	
	@PostMapping("createComment")
	public String createComment(CommentVO commentvo) {
		cs.createComment(commentvo);
		return "redirect:/board";
	}
	
	@PostMapping("updateComment")
	public String updateComment(CommentVO commentvo) {
		System.out.println(commentvo);
		return "redirect:/board";
	}
	
	@PostMapping("deleteComment")
	public String deleteComment(int id) {
		cs.deleteComment(id);
		return "redirect:/board";
	}
}
