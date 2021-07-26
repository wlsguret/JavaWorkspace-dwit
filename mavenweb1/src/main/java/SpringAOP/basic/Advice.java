package SpringAOP.basic;

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
