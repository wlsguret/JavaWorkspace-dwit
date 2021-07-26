package javatest;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import mvc2path.dao.OracleDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/dispatcher-servlet.xml"})
public class javatest {
	
	@Autowired
	OracleDAO dao;
	
	@Test
	public void test() {
		//System.out.println("test");
		dao.select();
		assertEquals(dao.insert(), 1);
		
	}
	
	@Before
	public void before() {
		System.out.println("테스트시작");
	}
	
	@After
	public void after() {
		System.out.println("테스트종료");
	}
	

}
