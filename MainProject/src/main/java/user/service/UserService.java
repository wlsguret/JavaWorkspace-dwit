package user.service;

import java.util.List;

import user.model.UserVO;

public interface UserService {
	
	int userInsert(UserVO user);
	UserVO checkEmail(String email);
	UserVO userLogin(String email, String password);
	List<UserVO> userList();
	List<UserVO> findEmail(String name, String birthday);
	UserVO findPassword(String email, String birthday);
	int userPwdUpdate(String email, String password);
	int userDelete(String email);
}
