package SpringAOP.basic2;

import org.springframework.stereotype.Component;

@Component("advice")
public class Advice {
	
	public Advice() {
	}
	
	public void before() {
		System.out.println("before exe");
	}
	
	public void after() {
		System.out.println("after exe");
	}
}
