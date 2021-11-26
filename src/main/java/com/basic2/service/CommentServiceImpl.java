package com.basic2.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;

import com.basic2.dao.CommentDAO;
import com.basic2.vo.CommentVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CommentServiceImpl implements CommentService {
	
	private final LocalDate now = LocalDate.now();
	private final CommentDAO commentdao;
	
	@Override
	public void createComment(CommentVO commentvo) {
		commentvo.setWriteDate(now);
		commentvo.setModifyDate(now);
		commentdao.createComment(commentvo);
	}
	@Override
	public void updateComment(CommentVO commentvo) {
		commentvo.setModifyDate(now);
		commentdao.updateComment(commentvo);
	}
	
	@Override
	public void deleteComment(int id) {
		commentdao.deleteComment(id);
	}
	
	@Override
	public void deleteBoardComment(int idx) {
		commentdao.deleteBoardComment(idx);
	}
	
	@Override
	public List<CommentVO> selectBoardComment(int boardidx) {
		return commentdao.selectBoardComment(boardidx);
	}
	


}
