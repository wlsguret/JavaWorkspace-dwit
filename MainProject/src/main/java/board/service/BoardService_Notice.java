package board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import board.model.BoardVO;

public class BoardService_Notice implements BoardService {
	
	@Autowired
	BoardMapper mapper;
	
	@Override
	public int boardInsert(BoardVO board) {
		return 0;
	}

	@Override
	public BoardVO boardSelect(int idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> boardList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int boardUpdate(int idx, String title, String content) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int boardDelete(int idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
