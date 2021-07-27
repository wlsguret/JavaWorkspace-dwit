package board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.model.BoardVO;

@Service("communityService")
public class BoardService_Community implements BoardService {
	
	@Autowired
	BoardMapper mapper;
	private String tName = "Community";
	
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
		return mapper.boardList(tName);
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
