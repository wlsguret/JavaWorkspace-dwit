package user.model;

import java.util.Date;

public class UserVO {
	
	private String email;
	private String password;
	private String name;
	private Date birthday;
	private String gender;
	
	public UserVO() {	}

	public UserVO(String email, String password, String name, Date birthday, String gender) {
		this.email = email;
		this.password = password;
		this.name = name;
		this.birthday = birthday;
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "UserVO [email=" + email + ", password=" + password + ", name=" + name + ", birthday=" + birthday
				+ ", gender=" + gender + "]";
	}

}
