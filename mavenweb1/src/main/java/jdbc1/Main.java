package jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Main {

	public static void main(String[] args) {
		ApplicationContext ctx = new GenericXmlApplicationContext("jdbc1/dbconfig.xml");
		// System.out.println(ctx.getBean("datasource"));
		DriverManagerDataSource ds = (DriverManagerDataSource) ctx.getBean("datasource");
		try {
			Connection conn = ds.getConnection();
			// System.out.println(conn);
			String sql = "select count(*) from board";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				System.out.println(rs.getInt(1));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
