package test;

import java.util.Random;

import org.junit.Test;

public class random {

	@Test
	public void random() {
		Random rand = new Random();
		int code = rand.nextInt(1000000);
		System.out.println(code);
	}
}
