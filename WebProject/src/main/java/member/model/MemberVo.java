package member.model;

public class MemberVo {
	String id;
	String password;

	public MemberVo() {
	}

	public MemberVo(String id, String password) {
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
		return "MemberVo [id=" + id + ", password=" + password + "]";
	}

}
