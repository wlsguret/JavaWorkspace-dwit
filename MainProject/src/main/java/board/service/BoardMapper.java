package board.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import board.model.BoardVO;

public interface BoardMapper {
	
	int boardInsert(@Param("tName")String tName, @Param("board")BoardVO board);
	BoardVO boardSelect(@Param("tName")String tName, int idx);
	List<BoardVO> boardList(@Param("tName")String tName);
	int boardUpdate(@Param("tName")String tName, @Param("idx")int idx, @Param("title")String title, @Param("content")String content);
	int boardDelete(@Param("tName")String tName, int idx);
	
}
