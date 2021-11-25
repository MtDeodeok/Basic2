package com.basic2.service;

import java.util.List;

import com.basic2.vo.CommentVO;

public interface CommentService {
	void createComment(CommentVO commentvo);
	void updateComment(CommentVO commentvo);
	void deleteComment(int id);
	public void deleteBoardComment(int idx);
	List<CommentVO> selectBoardComment(int boardidx);
}
