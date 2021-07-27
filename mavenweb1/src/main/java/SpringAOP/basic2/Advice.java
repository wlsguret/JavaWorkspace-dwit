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
	
	public void returning() {
		System.out.println("returning");
	}
	
	public void throwing() {
		System.out.println("throwing");
	}
	
	public void around() {
		System.out.println("around");
	}
}
