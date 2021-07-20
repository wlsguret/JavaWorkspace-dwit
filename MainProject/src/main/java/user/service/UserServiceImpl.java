package user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import user.dao.UserDAO;

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
	public int select(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List select() {
		System.out.println(dao.select());
		return null;
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
