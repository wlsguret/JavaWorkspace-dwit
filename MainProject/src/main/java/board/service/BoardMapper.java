package board.service;

import java.util.List;

import board.model.BoardVO;

public interface BoardMapper {
	
	int boardInsert(BoardVO board);
	BoardVO boardSelect(int idx);
	List<BoardVO> boardList();
	int boardUpdate(int idx, String title, String content);
	int boardDelete(int idx);
	
}
