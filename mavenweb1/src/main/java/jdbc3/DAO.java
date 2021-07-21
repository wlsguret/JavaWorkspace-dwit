package jdbc3;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import board.model.BoardVO;

@Repository("dao")
public class DAO {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	public int count() {
//		String sql ="select count(*) from board";
//		int count = jdbc.queryForObject(sql, Integer.class);
//		return count;
		return jdbc.queryForObject("select count(*) from board", Integer.class);
	}
	
	@SuppressWarnings("deprecation")
	public BoardVO select(int idx) {
		String sql = "select * from board where idx=?";
//		return jdbc.queryForObject(sql, ?값, 결과처리);
		return jdbc.queryForObject(sql, new Object[] {idx}, new RowMapper<BoardVO>() {
			public  BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				BoardVO board = new BoardVO();
				board.setIdx(rs.getInt("idx"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				return board;
			}
		} );
	}
	
	@SuppressWarnings("deprecation")
	public List<BoardVO> select() {
		String sql = "select * from board order by groupid desc";
		return jdbc.query(sql, new Object[] {}, new RowMapper<BoardVO>() {
			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				BoardVO board = new BoardVO();
				board.setIdx(rs.getInt("idx"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				return board;
			}			
		});
	}
	
	public int insert(BoardVO board) {
		String sql = "insert into board values("
				+ "board_idx_seq.nextval,?,?,0,"
				+ "board_groupid_seq.nextval,0,0,0,?,?,sysdate)";
		return jdbc.update(
				sql,
				board.getTitle(),
				board.getContent(),
				board.getWriteId(),
				board.getWriteName()
				);
	}
	
	public int update(int idx, String title, String content) {
		return jdbc.update("update board set title=?, content=? where idx=?",
				title, content, idx);
	}
	
	public int delete(int idx) {
		return jdbc.update("delete from board where idx=?", idx);
	}
}
