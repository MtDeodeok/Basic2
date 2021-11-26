package com.basic2.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;

import com.basic2.dao.BoardDAO;
import com.basic2.vo.BoardVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {
	private final LocalDate now = LocalDate.now();
	private final BoardDAO boardDAO;
	
	@Override
	public void createContents(BoardVO boardvo) {
		boardvo.setWriteDate(now);
		boardvo.setModifyDate(now);
		boardDAO.createContents(boardvo);
	}

	@Override
	public void updateContents(BoardVO boardvo) {
		boardvo.setModifyDate(now);
		boardDAO.updateContents(boardvo);
	}

	@Override
	public void deleteContents(String memberid, int idx) {
		boardDAO.deleteContents(memberid, idx);
	}

	@Override
	public List<BoardVO> selectAll() {
		return boardDAO.selectAll();
	}

	@Override
	public BoardVO selectTitle(String title,int idx) {
		return boardDAO.selectTitle(title,idx);
	}


}
