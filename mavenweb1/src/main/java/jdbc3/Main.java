package jdbc3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import board.model.BoardVO;

public class Main {

	public static void main(String[] args) {
		ApplicationContext ctx=
				new GenericXmlApplicationContext("jdbc3/dbconfig.xml");
//		 3가지 방법 다 가능
		DAO dao1 = (DAO) ctx.getBean("dao","jdbc3.DAO.class");
		DAO dao2 = (DAO) ctx.getBean("dao");
		DAO dao3 = (DAO) ctx.getBean(jdbc3.DAO.class);
//		System.out.println(dao1.count());
//		System.out.println(dao2.count());
//		System.out.println(dao3.count());
//		System.out.println(dao1.insert(new BoardVO("jdbc","jdbc content","jdbcuser","jdbcUser")));
//		System.out.println(dao1.update(1, "수정한다", "수정한내용"));
//		System.out.println(dao1.delete(10));
		System.out.println(dao1.select());
		
	}

}
