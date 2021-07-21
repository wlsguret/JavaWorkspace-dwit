package user.model;

public class UserVO {
	
	private String id;
	private String password;
	private String email;
	private String name;
	
	public UserVO() {
	
	}

	public UserVO(String id, String password, String email, String name) {
		this.id = id;
		this.password = password;
		this.email = email;
		this.name = name;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", password=" + password + ", email=" + email + ", name=" + name + "]";
	}
	
}
