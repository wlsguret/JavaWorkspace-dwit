package SpringAOP.basic2;

import org.springframework.stereotype.Component;

@Component("exe")
public class Exe {
	
	public void exe1() {
		System.out.println("exe1함수 실행");
//		int i = 10/0;
	}
	public void exe2() {
		System.out.println("exe2함수 실행");
	}
	public void exe3() {
		System.out.println("exe3함수 실행");
	}
}
