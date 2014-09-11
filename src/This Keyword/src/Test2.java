
public class Test2 {

	void m()
	{
		System.out.println("this is m() :: "+this);
	}
	
	public static void main(String[] args) {
		
		Test2 t=new Test2();
		
		System.out.println(t);
		
		t.m();
	}
}
