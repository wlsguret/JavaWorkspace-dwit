package user.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import user.model.UserVO;

public interface UserMapper {

	int userInsert(UserVO user);
	UserVO checkEmail(String email);
	UserVO userLogin(@Param("email") String email, @Param("password") String password);
	List<UserVO> userList();
	List<UserVO> findEmail(@Param("name") String name, @Param("birthday") String birthday);
	UserVO findPassword(@Param("email") String email, @Param("birthday") String birthday);
	int userPwdUpdate(@Param("email") String email, @Param("password") String password);
	int userDelete(String email);	
}