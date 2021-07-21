package mybatis;

import java.util.List;

public interface MemberMapper {
	
	public int insert(String id, String password);
	public MemberVO select(String id);
	public List<MemberVO> selects();
	public int update(String id, String password);
	public int delete(String id);
}
