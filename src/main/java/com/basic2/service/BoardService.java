package com.basic2.service;

import java.util.List;

import com.basic2.vo.BoardVO;

public interface BoardService {
	void createContents(BoardVO boardvo);
	void updateContents(BoardVO boardvo);
	void deleteContents(String memberid, int idx);
	List<BoardVO> selectAll();
	BoardVO selectTitle(String title,int idx);
}
