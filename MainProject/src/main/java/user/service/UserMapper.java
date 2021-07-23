package user.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import user.model.UserVO;

public interface UserMapper {

	int insert();
	UserVO select(@Param("email") String email, @Param("password") String password);
	List<UserVO> list();
	int update();
	int delete();	
}
