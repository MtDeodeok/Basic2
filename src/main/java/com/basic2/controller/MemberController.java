package com.basic2.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.basic2.service.MemberService;
import com.basic2.vo.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController {
	private final MemberService ms;

	@GetMapping("/main")
	public void main() {
		
	}

	@GetMapping("/login") // 로그인
	public void Login() {
		
	}
	
	@PostMapping("/login") 
	public String Login(HttpServletRequest request,Model model, String id, String password) {
		HttpSession session = request.getSession();
		int check = ms.memberCheck(id, password);
		if(check==1) {
			session.setAttribute("loginCheck", true);
			session.setAttribute("memberID", id);
			return "redirect:/main";
		}
		return "/login";
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String LogOut(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	@GetMapping("/join") // 회원가입
	public void join() {
		
	}
	
	@PostMapping("/join") 
	public String join(MemberVO membervo,HttpServletRequest req) {
		ms.insertMember(membervo);
		return "redirect:/Login";
	}
}
