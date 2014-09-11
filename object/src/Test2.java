
public class Test2 {

	int res;
	
	
	public void add()
	{
		Test1.x=Test1.x+1;
		
		Test1.setValue(Test1.x);
		
		System.out.println("New Value :: "+Test1.getValue());
	}
	
	public static void main(String[] args) {
		
		Test2 t=new Test2();
		Test1.setValue(3);
		
		t.res=Test1.getValue();
		
		System.out.println("Value is :: "+t.res);
		
		t.add();
		
		//new Test1().setObject(t);
		
		
	}

}
