package user.service;

import java.util.List;

import user.model.UserVO;

public interface UserService {
	
	int insert();
	UserVO select(String email, String password);
	List<UserVO> list();
	int update();
	int delete();
}
