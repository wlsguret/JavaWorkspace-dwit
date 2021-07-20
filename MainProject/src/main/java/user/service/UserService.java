package user.service;

import java.util.List;

public interface UserService {
	
	int insert();
	int select(String id);
	List select();
	int update();
	int delete();
}
