package user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import user.dao.UserDAO;
import user.model.UserVO;

@Service("userservice")
public class UserServiceImpl implements UserService {
	
	@Resource(name = "userdao")
	UserDAO dao;
	
	@Override
	public int insert() {
		dao.insert();
		return 0;
	}

	@Override
	public UserVO select(String id, String password) {
		return dao.select(id, password);
	}

	@Override
	public List select() {
		return dao.select();
	}

	@Override
	public int update() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

}
