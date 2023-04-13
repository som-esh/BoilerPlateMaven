package mavenproject;

import static org.junit.Assert.*;

import org.junit.Test;

public class addTest {

	@Test
	public void test() {
	  add obj=new add();
	  int res=obj.add1(1, 10);
        assertEquals(11,res);
	}
	@Test
	public void test1() {
	  add obj=new add();
	  int res=obj.add1(11, 10);
        assertEquals(21,res);
	}
	@Test
	public void test2() {
	  add obj=new add();
	  int res=obj.add1(1, 2);
        assertEquals(3,res);
	}
}
