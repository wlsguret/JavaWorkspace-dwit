package mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MemberMapper {
	
	public int insert(@Param("id") String id,@Param("password")  String password);
	public MemberVO select(String id);
	public List<MemberVO> selects();
	public int update(@Param("id")String id, @Param("password")String password);
	public int delete(String id);
}
