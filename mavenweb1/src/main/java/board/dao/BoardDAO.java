package board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import board.model.BoardVO;
import board.model.PageBoard;

@Repository("boarddao")
public class BoardDAO {
	
	int countPerPage = 10;
	public BoardDAO() {
	}

	public Connection connect() {
		Connection con = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String DBuser = "testuser";
		String DBpassword = "1111";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, DBuser, DBpassword);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		if (con == null) {
			System.out.println("BoardDAO connect() error!");
		}
		return con;
	}

	public void close(Connection con, PreparedStatement psmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		close(con, psmt);
	}

	public void close(Connection con, PreparedStatement psmt) {
		try {
			psmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int insert(BoardVO board) {
		Connection con = connect();
		PreparedStatement psmt = null;
		int result = 0;
		String sql = null;
		try {
			con.setAutoCommit(false);
			sql = "insert into board values(";
			sql += "board_idx_seq.nextval,";
			sql += "?,?,0,";
			sql += "board_groupid_seq.nextval,0,0,";
			sql += "0,";
			sql += "?,?,sysdate";
			sql += ")";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, board.getTitle());
			psmt.setString(2, board.getContent());
			psmt.setString(3, board.getWriteId());
			psmt.setString(4, board.getWriteName());

			result = psmt.executeUpdate();

			if (result > 0) {
				con.commit();
				System.out.println("sql 占쏙옙 占쌉뤄옙 占쏙옙占쏙옙");
			} else {
				con.rollback();
				System.out.println("sql 占쏙옙 占쌉뤄옙 占쏙옙占쏙옙");
			}
			close(con, psmt);
		} catch (Exception e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return result;
	}

	public List<BoardVO> select() {
		Connection con = connect();
		List<BoardVO> list = new ArrayList<BoardVO>();
		String sql = "select * from board order by groupid desc";
		try {
			PreparedStatement psmt = con.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				list.add(new BoardVO(rs.getInt("idx"), rs.getString("title"), rs.getString("content"),
						rs.getInt("readcount"), rs.getInt("groupid"), rs.getInt("depth"), rs.getInt("re_order"),
						rs.getInt("isdel"), rs.getString("write_id"), rs.getString("write_name"),
						rs.getDate("write_day")));
			}
			close(con, psmt, rs);
		} catch (SQLException e) {
			System.out.println("BoardDAO.select() error!");
			e.printStackTrace();
		}
		return list;
	}

	public BoardVO select(int idx) {
		Connection con = connect();
		BoardVO board = null;
		String sql = "select * from board where idx=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				board = new BoardVO();
				board.setIdx(rs.getInt("idx"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setReadcount(rs.getInt("readcount"));
				board.setGroupid(rs.getInt("groupid"));
				board.setDepth(rs.getInt("depth"));
				board.setReOrder(rs.getInt("re_order"));
				board.setIsdel(rs.getInt("isdel"));
				board.setWriteId(rs.getString("write_id"));
				board.setWriteName(rs.getString("write_name"));
				board.setWriteDay(rs.getDate("write_day"));
			}
			close(con, pstmt, rs);
		} catch (Exception e) {
		}
		return board;
	}
	
	public PageBoard searchlist(String field, String search) {
		int requestPage = 1;
		Connection con = connect();
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String sql = null;
		PageBoard pageboard = null;
		// 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙
		// 占쏙옙청 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙(requestPage)
		int 
		totalPage = 0, // 占쏙옙체 占쏙옙占쏙옙占쏙옙
		beginPage = 0, // 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
		endPage = 0, // 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
		firstRow = 0, // 占쏙옙占쏙옙 占쌜뱄옙호
		endRow = 0, // 占쏙옙 占쌜뱄옙호
		articleCount = 0, // 占쏙옙체 占쏙옙占실쇽옙
		countPerPage = this.countPerPage; // 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쌉시글쇽옙
		List<BoardVO> list = new ArrayList<BoardVO>();
		// countPerPage 占쏙옙큼占쏙옙 占쌉시깍옙 list
		try {
			// 1.占쏙옙체 占쌉시뱄옙 占쏙옙 占쏙옙占싹깍옙(articleCount)
			sql = "select count(*) from board where "+field+" like '%"+search+"%'";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			if (rs.next()) {
				articleCount = rs.getInt(1);
			} else {
				articleCount = 0;
			}
			System.out.println("占쌉시글쇽옙:" + articleCount);
			// 2.占쏙옙체占쏙옙占쏙옙占쏙옙 占쏙옙(totalPage)
			totalPage = articleCount / countPerPage;
			if (articleCount % countPerPage > 0) {
				totalPage++;
			}
			System.out.println("占쏙옙체占쏙옙占쏙옙占쏙옙:" + totalPage);
			System.out.println("占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙:"+ requestPage);
			// 3.占쏙옙청占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 占쌜뱄옙호, 占쏙옙 占쌜뱄옙호(firstRow, endRow)
			firstRow = (requestPage - 1) * countPerPage + 1;
			endRow = firstRow + countPerPage - 1;
			System.out.printf("firstRow:%d, endRow:%d\n", firstRow, endRow);
			// 4.占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙호, 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙호(beginPage, endPage)
			System.out.println("requestPage:"+requestPage);
			// 占쏙옙占쏙옙,占쏙옙占쏙옙 占쏙옙튼占쏙옙占쏙옙 5칸占쏙옙 占쏙옙占쏙옙占싱곤옙 占쏙옙占쏙옙占쏙옙占쏙옙튼占쏙옙 5占쏙옙占쏙옙 占쏙옙占쏙옙占실억옙 占쏙옙占쏙옙 占쏙옙
			int state = (requestPage-1)/5;
			beginPage = state*5+1;
			endPage = beginPage+4;
			if(beginPage < 1) {
				beginPage =1;
			}
			if(endPage > totalPage) {
				endPage = totalPage;
			}

			System.out.printf("beginPage:%d, endPage:%d\n", beginPage, endPage);
			// 5.占쏙옙占쏙옙占쏙옙占쏙옙 占쌔댐옙占싹댐옙 占쏙옙占쏙옙트(firstRow, endRow)
			sql = "select c.* from " + "(select rownum rnum, b.* from "
					+ "(select * from board a where "+field+" like '%"+search+"%' order by a.groupid desc, a.depth asc, a.idx asc) b where rownum <= ?) c "
					+ "where rnum >= ? ";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, endRow); // 10큰占쏙옙
			psmt.setInt(2, firstRow);// 1占쏙옙占쏙옙占쏙옙
			rs = psmt.executeQuery();
			// 6.DB占쏙옙 占쏙옙占쏙옙트占쏙옙 board占쏙옙체占쏙옙 占쏙옙占� 占쏙옙占쏙옙
			while (rs.next()) {
				// System.out.println("check");
				BoardVO board = new BoardVO();
				board.setIdx(rs.getInt("idx"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setReadcount(rs.getInt("readcount"));
				board.setGroupid(rs.getInt("groupid"));
				board.setDepth(rs.getInt("depth"));
				board.setReOrder(rs.getInt("re_order"));
				board.setIsdel(rs.getInt("isdel"));
				board.setWriteId(rs.getString("write_id"));
				board.setWriteName(rs.getString("write_name"));
				board.setWriteDay(rs.getDate("write_day"));
				list.add(board);
			}
			pageboard = new PageBoard(list, requestPage, articleCount, totalPage, firstRow, endRow, beginPage, endPage);
			//System.out.println(pageboard.getList().toString());
			close(con, psmt, rs);
			// conn.commit();
		} catch (SQLException e) {
			System.out.println("BoardDAO.searchlist(String field, String search) error!");
			e.printStackTrace();
		}
		return pageboard;
	}
	
	public PageBoard pagemove(int requestPage,int pagemove) {
		Connection con = connect();
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String sql = null;
		PageBoard pageboard = null;
		// 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙
		// 占쏙옙청 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙(requestPage)
		int 
		totalPage = 0, // 占쏙옙체 占쏙옙占쏙옙占쏙옙
		beginPage = 0, // 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
		endPage = 0, // 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
		firstRow = 0, // 占쏙옙占쏙옙 占쌜뱄옙호
		endRow = 0, // 占쏙옙 占쌜뱄옙호
		articleCount = 0, // 占쏙옙체 占쏙옙占실쇽옙
		countPerPage = this.countPerPage; // 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쌉시글쇽옙
		List<BoardVO> list = new ArrayList<BoardVO>();
		// countPerPage 占쏙옙큼占쏙옙 占쌉시깍옙 list
		try {
			// 1.占쏙옙체 占쌉시뱄옙 占쏙옙 占쏙옙占싹깍옙(articleCount)
			sql = "select count(*) from board";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			if (rs.next()) {
				articleCount = rs.getInt(1);
			} else {
				articleCount = 0;
			}
			System.out.println("占쌉시글쇽옙:" + articleCount);
			// 2.占쏙옙체占쏙옙占쏙옙占쏙옙 占쏙옙(totalPage)
			totalPage = articleCount / countPerPage;
			if (articleCount % countPerPage > 0) {
				totalPage++;
			}
			if(pagemove == -1) {
				if(requestPage%5 !=0) {
					requestPage = (requestPage/5-1)*5+1;
				} else {
					requestPage = (requestPage/5-2)*5+1;
				}
			} else if (pagemove == 1) {
				if(requestPage%5 !=0) {
					requestPage = (requestPage/5+1)*5+1;
				} else {
					requestPage = (requestPage/5)*5+1;
				}
			}
			if(requestPage <1) {
				requestPage = 1;
			} else if (requestPage > totalPage) {
				requestPage = totalPage;
			}
			System.out.println("占쏙옙체占쏙옙占쏙옙占쏙옙:" + totalPage);
			System.out.println("占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙:"+ requestPage);
			// 3.占쏙옙청占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 占쌜뱄옙호, 占쏙옙 占쌜뱄옙호(firstRow, endRow)
			firstRow = (requestPage - 1) * countPerPage + 1;
			endRow = firstRow + countPerPage - 1;
			System.out.printf("firstRow:%d, endRow:%d\n", firstRow, endRow);
			// 4.占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙호, 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙호(beginPage, endPage)
			System.out.println("requestPage:"+requestPage);
			// 占쏙옙占쏙옙,占쏙옙占쏙옙 占쏙옙튼占쏙옙占쏙옙 5칸占쏙옙 占쏙옙占쏙옙占싱곤옙 占쏙옙占쏙옙占쏙옙占쏙옙튼占쏙옙 5占쏙옙占쏙옙 占쏙옙占쏙옙占실억옙 占쏙옙占쏙옙 占쏙옙
			int state = (requestPage-1)/5;
			beginPage = state*5+1;
			endPage = beginPage+4;
			if(beginPage < 1) {
				beginPage =1;
			}
			if(endPage > totalPage) {
				endPage = totalPage;
			}

			System.out.printf("beginPage:%d, endPage:%d\n", beginPage, endPage);
			// 5.占쏙옙占쏙옙占쏙옙占쏙옙 占쌔댐옙占싹댐옙 占쏙옙占쏙옙트(firstRow, endRow)
			sql = "select c.* from " + "(select rownum rnum, b.* from "
					+ "(select * from board a order by a.groupid desc, a.depth asc, a.idx asc) b where rownum <= ?) c "
					+ "where rnum >= ? ";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, endRow); // 10큰占쏙옙
			psmt.setInt(2, firstRow);// 1占쏙옙占쏙옙占쏙옙
			rs = psmt.executeQuery();
			// 6.DB占쏙옙 占쏙옙占쏙옙트占쏙옙 board占쏙옙체占쏙옙 占쏙옙占� 占쏙옙占쏙옙
			while (rs.next()) {
				// System.out.println("check");
				BoardVO board = new BoardVO();
				board.setIdx(rs.getInt("idx"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setReadcount(rs.getInt("readcount"));
				board.setGroupid(rs.getInt("groupid"));
				board.setDepth(rs.getInt("depth"));
				board.setReOrder(rs.getInt("re_order"));
				board.setIsdel(rs.getInt("isdel"));
				board.setWriteId(rs.getString("write_id"));
				board.setWriteName(rs.getString("write_name"));
				board.setWriteDay(rs.getDate("write_day"));
				list.add(board);
			}
			pageboard = new PageBoard(list, requestPage, articleCount, totalPage, firstRow, endRow, beginPage, endPage);
			//System.out.println(pageboard.getList().toString());
			close(con, psmt, rs);
			// conn.commit();
		} catch (SQLException e) {
			System.out.println("BoardDAO.select(int requestPage) error!");
			e.printStackTrace();
		}
		return pageboard;
	}

	public int update(int idx, String title, String content) {
		Connection con = connect();
		PreparedStatement ps;
		try {
			String sql = "update board set title=?, content=? where idx=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, content);
			ps.setInt(3, idx);
			return ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("BoardDAO.java update() error!");
			return -1;
		}
	}

	public int delete(int idx) {
		Connection con = connect();
		PreparedStatement ps;
		try {
			String sql = "delete from board where idx=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, idx);
			return ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("BoardDAO.java update() error!");
			return -1;
		}
	}

	/* replyInsert占쌉쇽옙占쏙옙占쏙옙 占싱울옙 */
	public boolean checkParent(int idx) {
		BoardVO board = null;
		Connection con = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String sql = null;
		int result = 0;
		try {
			con = connect();
			sql = "select count(*) from board where idx=? and isdel=0";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, idx);
			rs = psmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
			if (result != 1) {
				return false;
			}
			close(con, psmt, rs);
		} catch (Exception e) {
		}
		return true;
	}

	/* replyInsert占쌉쇽옙占쏙옙占쏙옙 占싱울옙 */
	public void reply_before_update(int depth, int groupid) {
		Connection con = null;
		PreparedStatement psmt = null;
		String sql = null;
		try {
			con = connect();
			sql = "update board set depth=depth+1 where groupid=? and depth>=?";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, groupid);
			psmt.setInt(2, depth);
			psmt.executeUpdate();
			close(con, psmt);
		} catch (Exception e) {
		}
	}

	/* 占쏙옙占쏙옙 占쏙옙 占쌉쇽옙 占싱울옙 */
	public int replyInsert(BoardVO board) {
		// 占쏙옙占쏙옙占�
		// 1.占싸몌옙占쏙옙占� 占쏙옙占쏙옙占싹댐옙 占쏙옙占쏙옙 확占쏙옙 - checkParent(board.getIdx());
		// 2.占쏙옙方占� 占쏙옙占쏙옙占� 占쌍댐옙 占쌜울옙 占쏙옙占쏙옙 groupid, depth,[re_order]占쏙옙占쏙옙 占쏙옙占쏙옙 -
		// reply_before_update(depth, groutid);
		// 3.占쏙옙占쏙옙占� 占쏙옙占� //占쏙옙占� insert();
		Connection con = null;
		PreparedStatement psmt = null;
		String sql = null;
		int result = 0;
		try {
			con = connect();
			con.setAutoCommit(false);
			// 占싸몌옙占� 占쏙옙占썹여占쏙옙 확占쏙옙
			if (!checkParent(board.getIdx())) {
				con.rollback();
				return 0;
			}
			System.out.println("占싸몌옙占� 확占쏙옙");
			// 占쏙옙方占� 占쏙옙占시듸옙 占쌜울옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙트
			reply_before_update(board.getDepth(), board.getGroupid());
			System.out.println("占쏙옙占쏙옙 占쏙옙占� 占쌉뤄옙 占싹뤄옙");
			// insert占쌜억옙
			sql = "insert into board values(";
			sql += "board_idx_seq.nextval,";
			sql += "?,?,0,"; // 1.title, 2.content, readcount
			sql += "?,?,?,"; // 3.groupid, 4.depth, 5.re_order
			sql += "0,"; // 占쏙옙占쏙옙占쏙옙占쏙옙
			sql += "?,?,sysdate"; // 6.write_id, 7.write_name, 8.占쏙옙짜
			sql += ")";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, board.getTitle());
			psmt.setString(2, board.getContent());
			psmt.setInt(3, board.getGroupid());
			psmt.setInt(4, board.getDepth());
			psmt.setInt(5, board.getReOrder());
			psmt.setString(6, board.getWriteId());
			psmt.setString(7, board.getWriteName());

			result = psmt.executeUpdate();
			System.out.println("result:" + result);
			if (result == 0) {
				con.rollback();
				System.out.println("占쏙옙占� 占쏙옙占쏙옙");
				return 0;
			} else {
				con.commit();
				System.out.println("占쏙옙占� 占쌉뤄옙 占싹뤄옙");
			}

		} catch (Exception e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return result;
	}

	public int readcountUpdate(int idx) {
		Connection con = connect();
		PreparedStatement ps;
		try {
			String sql = "update board set readcount=readcount+1 where idx=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, idx);
			return ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("BoardDAO.java readcountUpdate() error!");
			return -1;
		}
		
	}

}
