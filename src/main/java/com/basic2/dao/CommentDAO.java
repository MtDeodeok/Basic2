package com.basic2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.basic2.vo.CommentVO;

@Mapper
public interface CommentDAO {
	void createComment(CommentVO commentvo);
	void updateComment(CommentVO commentvo);
	void deleteComment(@Param("id")int id);
	public void deleteBoardComment(@Param("boardidx")int idx);
	List<CommentVO> selectBoardComment(@Param("boardidx")int boardidx);
}
