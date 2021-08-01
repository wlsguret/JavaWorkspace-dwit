package OracleImgUploadTest;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/*뮤비 입력폼 만들어서 input tyep=file로 폼 전송 가수,뮤비이름,발매일,영상주소,이미지파일
이미지 파일을 DB에 저장하거나 서버에 저장하고 경로만 db에 저장한뒤
VIDEO 폼에서 select 해와서 리스트 출력*/


public class OracleFileUtil {
	
	public static final String url = "jdbc:oracle:thin:@localhost:1521:xe";
	public static final String userID = "user2";
	public static final String password = "1111";
	public static final String insert_statement =
			"insert into mv values(?,?,?,?,?)";

	public static void main(String[] args) {
		OracleFileUtil test = new OracleFileUtil();
		test.writeFile("C:\\Users\\USER\\git\\JavaWorkspace-dwit\\MainProject\\src\\main\\webapp\\static\\img\\IU.jpg");
	}

	private void writeFile(String fileName) {
		//Load oracle driver
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		//Create a database connection
			Connection con = DriverManager.getConnection(url, userID, password);
		//Create the insert SQL statement
			PreparedStatement psmt = con.prepareStatement(insert_statement);
		//Retrieve the file and set is as a parameter in the SQL statement
			psmt.setInt(1, 1);
			psmt.setString(2, "https://www.youtube.com/embed/v7bnOxV4jAc");
			psmt.setString(3, "lilac");
			FileInputStream fis = new FileInputStream(fileName);
			psmt.setBinaryStream(4, fis, fis.available());
			psmt.setString(5, "2021/08/01");
		//Run the SQL statement
			int i = psmt.executeUpdate();
			System.out.println("입력결과:"+i);
		//Close database connection
			con.close();
			System.out.println("파일 업데이트 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
