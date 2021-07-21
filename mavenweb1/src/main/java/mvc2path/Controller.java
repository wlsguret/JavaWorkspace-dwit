package mvc2path;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Component;

import mvc2path.service.DAOService;
@Component
public class Controller {
	//@Autowired
	//DAOService service;
	/*
	 * @Test public void test(){ service.insert(); }
	 */
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ac = 
		new AnnotationConfigApplicationContext(mvc2path.AppConfig.class);
		
		DAOService s=(DAOService)
		ac.getBean("daoservice",mvc2path.service.DAOService.class);
		
		s.insert();
	}
	
}
