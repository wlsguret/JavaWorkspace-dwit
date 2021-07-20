package user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("userdao")
public class UserDAO {
	
	@Autowired
	JdbcTemplate jdbc;
	
	public int insert() {
		System.out.println("userdao:insert()");
		return 0;
	}
	
	public int select(String id) {
		System.out.println("userdao:select(id)");
		return 0;
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	public List select() {
		String sql = "select * from member";
		return jdbc.query(sql, new Object[] {}, new RowMapper() {
			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getString(1);
			}
			
		});
	}

	public int update() {
		System.out.println("userdao:update()");
		return 0;
	}

	public int delete() {
		System.out.println("userdao:delete()");
		return 0;
	}
}
