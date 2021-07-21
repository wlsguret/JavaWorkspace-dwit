package mybatis;

public class MemberVO {
	//sql필드명, 기본생성, 필드 생성자, get/set 함수, toString함수
	String id;
	String password;
	public MemberVO() {
	
	}
	public MemberVO(String id, String password) {
		this.id = id;
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + "]";
	}
	
	

}
