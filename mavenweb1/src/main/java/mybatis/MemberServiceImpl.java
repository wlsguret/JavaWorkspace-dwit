package mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberservice")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public int insert(String id, String password) {
		return mapper.insert(id, password);
	}

	@Override
	public MemberVO select(String id) {
		return mapper.select(id);
	}

	@Override
	public List<MemberVO> selects() {
		return mapper.selects();
	}

	@Override
	public int update(String id, String password) {
		return mapper.update(id, password);
	}

	@Override
	public int delete(String id) {
		return mapper.delete(id);
	}

}
