package user.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.model.UserVO;

@Service("userservice")
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserMapper mapper;

	@Override
	public int userInsert(UserVO user) {
		return mapper.userInsert(user);
	}

	@Override
	public UserVO checkEmail(String email) {
		return mapper.checkEmail(email);
	}

	@Override
	public UserVO userLogin(String email, String password) {
		return mapper.userLogin(email, password);
	}

	@Override
	public List<UserVO> userList() {
		return mapper.userList();
	}

	@Override
	public List<UserVO> findEmail(String name, String birthday) {
		return mapper.findEmail(name, birthday);
	}
	
	@Override
	public int userPwdUpdate(String email, String password) {
		return mapper.userPwdUpdate(email, password);
	}

	@Override
	public int userDelete(String email) {
		return mapper.userDelete(email);
	}

	

	

}
