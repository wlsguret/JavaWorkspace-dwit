package controller;

import board.model.PageBoard;

public interface BoardService {

	PageBoard pagemove(int requestPage, int pagemove);

	PageBoard searchlist(String field, String search);

}
