package user.service;

import java.util.List;

import user.model.UserVO;

public interface UserService {
	
	int insert();
	UserVO select(String id, String password);
	List select();
	int update();
	int delete();
}
