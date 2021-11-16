package com.basic2.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.basic2.vo.MemberVO;

public interface MemberService {
	
	void insertMember(MemberVO membervo);
	void updateMember(MemberVO membervo);
	void deleteMember(@Param("id") String id);
	List<MemberVO> selectAll();
	MemberVO memberLogin(@Param("id") String id);
	int memberCheck(@Param("id") String id,@Param("password") String password);
	
}
