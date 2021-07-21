package jdbc2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Main {

	public static void main(String[] args) {
		ApplicationContext ctx=
				new GenericXmlApplicationContext("jdbc2/dbconfig.xml");
			//System.out.println(ctx.getBean("datasource"));
			DriverManagerDataSource ds
			=(DriverManagerDataSource)ctx.getBean("datasource");
			try {
				Connection conn=ds.getConnection();
				//System.out.println(conn);
				String sql=null;
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				
				sql="select count(*) from board";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					int articleCount=rs.getInt(1);
					System.out.println(articleCount);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}

}
