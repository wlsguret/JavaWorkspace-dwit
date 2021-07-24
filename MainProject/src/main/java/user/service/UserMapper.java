package user.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import user.model.UserVO;

public interface UserMapper {

	int userInsert(UserVO user);
	UserVO checkEmail(String email);
	UserVO userLogin(@Param("email") String email, @Param("password") String password);
	List<UserVO> userList();
	int userUpdate();
	int userDelete(String email);	
}
