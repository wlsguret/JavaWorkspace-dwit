package junit;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import mybatis.MemberService;
import mybatis.MemberVO;

public class test {
	
	@Autowired
	MemberService service;
	
	@Test
	public void test() {
		List<MemberVO> list = service.selects();
		for(MemberVO m : list) {
			System.out.println(m);
		}
	}
}
