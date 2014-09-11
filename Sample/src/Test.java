
public class Test {
	String a,b;
	 public Test(){
	 //a="three";
	 b="two";
	 }
	 private void add() {
	System.out.println("addition is:"+(a+b));

	}
	 private void sub() {
//		System.out.println("subtraction is:"+(a-b));

	}
	public static void main(String[] args) {
		Test sw=new Test();
		
		sw.a="three";
		new Test().add();
		
		//sw.a="three";
		int i=1;
	
		switch(i)
		{
		case 1:System.out.println("case 1");
		          sw.add();
		          break;
		case 2:System.out.println("case 2");
				 sw.sub();
				 break;
				 
		default:System.out.println("case is default");
				break;
		}
	} 
}
		