package mybatis;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Main {

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		ApplicationContext ctx = new GenericXmlApplicationContext("mybatis/dbconfig.xml");
		MemberService member = (MemberService) ctx.getBean("memberservice");
//		System.out.println(member.insert("user7", "1234"));
//		System.out.println(member.update("user1", "1111"));
//		member.delete("user2");
//		System.out.println(member.select("user2"));
//		System.out.println(member.selects());
		List<MemberVO> list = member.selects();
		for(MemberVO m: list) {
			System.out.println(m);
		}
		
		
		
		

	}

}
