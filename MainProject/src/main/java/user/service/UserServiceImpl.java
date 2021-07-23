package user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.model.UserVO;

@Service("userservice")
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserMapper mapper;
	
	@Override
	public int insert() {
		return mapper.insert();
	}

	@Override
	public UserVO select(String email, String password) {
		return mapper.select(email, password);
	}

	@Override
	public List<UserVO> list() {
		return mapper.list();
	}

	@Override
	public int update() {
		return mapper.update();
	}

	@Override
	public int delete() {
		return mapper.delete();
	}

}
