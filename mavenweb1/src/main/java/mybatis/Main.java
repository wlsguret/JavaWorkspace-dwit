package mybatis;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Main {

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		ApplicationContext ctx = new GenericXmlApplicationContext("mybatis/dbconfig.xml");
		MemberService member = (MemberService) ctx.getBean("memberservice");
		System.out.println(member.selects());
		

	}

}
