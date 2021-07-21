package controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import board.dao.BoardDAO;
import board.model.PageBoard;

@Service("boardservice")
public class BoardServiceImpl implements BoardService{
	
	@Resource(name = "boarddao")
	BoardDAO dao;
	
	@Override
	public PageBoard pagemove(int requestPage, int pagemove) {

		return dao.pagemove(requestPage, pagemove);
	}
	@Override
	public PageBoard searchlist(String field, String search) {
		return dao.searchlist(field, search);
	}

}
