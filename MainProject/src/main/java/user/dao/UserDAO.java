package user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import user.model.UserVO;

@Repository("userdao")
@SuppressWarnings("deprecation")
public class UserDAO {

	@Autowired
	JdbcTemplate jdbc;

	public int insert() {
		System.out.println("userdao:insert()");
		return 0;
	}

	public UserVO select(String id, String password) {
		String sql = "select * from member where id=? and password=?";
//		return jdbc.queryForObject(sql, ?값, 결과처리);
		UserVO user = null;
		try {
			 user = jdbc.queryForObject(sql, new Object[] { id, password }, new RowMapper<UserVO>() {
				@Override
				public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
					return new UserVO(rs.getString("id"), rs.getString("password"), rs.getString("email"),
							rs.getString("name"));
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("일치하는 유저검색결과 없음");
		}
		return user;
	}

	public List<UserVO> select() {
		String sql = "select * from member";
		return jdbc.query(sql, new Object[] {}, new RowMapper<UserVO>() {
			@Override
			public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new UserVO(rs.getString("id"), rs.getString("password"), rs.getString("email"),
						rs.getString("name"));
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
