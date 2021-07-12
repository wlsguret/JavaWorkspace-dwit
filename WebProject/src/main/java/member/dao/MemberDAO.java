package member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import member.model.MemberVo;

public class MemberDAO {
	Connection con;
	public MemberDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
	    String DBuser = "user2";
	    String DBpassword	="1111";
	    try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,DBuser,DBpassword);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	    if(con == null) {
	    	System.out.println("loginDAO.java LoginDAO() error!");
	    }
	}
	
	public int loginCheck(String id, String password) {
		String sql = "select * from member where id=? and password=?";
	    PreparedStatement ps;
	    ResultSet rs;
	    int result;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if(rs.next()){
				result = 1;
			} else {
				result = 0;
			}
			System.out.println("result:"+result);
			rs.close();
			ps.close();
			con.close();
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		} 
	}
	
	public int insert(MemberVo member) {
		PreparedStatement psmt = null;
		int result = 0;
		String sql = null;
		try {
			con.setAutoCommit(false);
			sql = "insert into member values(?,?)";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getPassword());
			result = psmt.executeUpdate();

			if (result > 0) {
				con.commit();
				System.out.println("signup success");
			} else {
				con.rollback();
				System.out.println("signup fail");
			}
			psmt.close();
			con.close();
		} catch (Exception e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return result;
	}
}
