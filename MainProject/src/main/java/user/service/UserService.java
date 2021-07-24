package user.service;

import java.util.List;

import user.model.UserVO;

public interface UserService {
	
	int userInsert(UserVO user);
	UserVO checkEmail(String email);
	UserVO userLogin(String email, String password);
	List<UserVO> userList();
	int userUpdate();
	int userDelete(String email);
}
