import org.omg.CosNaming.NamingContextExtPackage.AddressHelper;


public class Test1 {

	static int count=0;
	static int j;
	
	public Test1()
	{
		count++;
		System.out.println("Value :: "+count);
	}
	
	public static void change()
	{
		count=4;
		System.out.println("Value :: "+count);
		//j=1;
	}
	
	public void add()
	{
		count=5;
		System.out.println("ADD Val :: "+count);
	}
	
	
	static
	{
		System.out.println("This is static block");
	}
	
	static 
	{
		
	}
	static 
	{
		
	}
	
	public static void main(String[] args) {
		new Test1();
		new Test1();
		new Test1();
		
		Test1 t=new Test1();
		t.add();
		
		change();
		Test1.change();
		
		System.out.println("Val=== "+count);
		
		System.out.println(" Mul === "+(j*4));
	}
}
