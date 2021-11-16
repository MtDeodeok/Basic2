package com.basic2.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;

import com.basic2.dao.MemberDAO;
import com.basic2.util.SHAUtils;
import com.basic2.vo.MemberVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	private final MemberDAO memberdao;
	
	private final SHAUtils shautils;
	
	@Override
	public void insertMember(MemberVO membervo) {
		LocalDate now = LocalDate.now();
		membervo.setRegistDate(now);
		String password = shautils.encodingPw(membervo.getPassword());
		membervo.setPassword(password);
		memberdao.insertMember(membervo);
	}

	@Override
	public void updateMember(MemberVO membervo) {

	}

	@Override
	public void deleteMember(String id) {

	}

	@Override
	public List<MemberVO> selectAll() {
		
		return null;
	}

	@Override
	public MemberVO memberLogin(String id) {
		
		return memberdao.memberLogin(id);
	}
	
	@Override
	public int memberCheck(String id, String password) {
		String passwordEncoding = shautils.encodingPw(password);
		return memberdao.memberCheck(id, passwordEncoding);
	}


}
