
public class Test1 {

	int id; 
	
	public Test1()
	{
		System.out.println("This is Default constructor");
	}
	
	public Test1(int id)
	{
		this();
		this.id=id;
		this.dis();
		
		fun(this);
	}
	
	
//	public Test1(Test1 t)
//	{
//		return this;
//	}
	public void dis()
	{
		System.out.println("ID == "+id);
	}
	
	void fun(Test1 t)
	{
		System.out.println("This keyword");
	}
	
	public static void main(String[] args) {

		Test1 t=new Test1(1);
		//t.dis();
		
		//new Test1(this);
	}
}
