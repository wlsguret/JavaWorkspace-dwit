package user.dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import user.service.UserService;
import user.service.UserServiceImpl;

public class Main {

	public static void main(String[] args) {
		ApplicationContext ctx = new GenericXmlApplicationContext("config/dbconfig.xml");
		UserService service =  (UserServiceImpl) ctx.getBean("userservice");
		service.select();
	}

}
