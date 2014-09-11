
public class Constructor {
	
	int a,b,res;
	
	public Constructor()
	{
		a=1;
		b=2;
	}
	public Constructor(int z,int y)
	{
		a=z;
		b=y;
	}
	
	public Constructor(int x,float y,int z)
	{
		System.out.println(x+" "+y+" "+z);
	}
	
	public Constructor(String s,double j)
	{
		System.out.println(s+" "+j);
	}
	
	public void add()
	{
		res=a+b;
		System.out.println("Addition is :: "+res);
	}
	
	public void add(int x)
	{
		
	}
	public void add(float y)
	{
		
	}
	
	public void add(String u,int j)
	{
		
	}
	public static void main(String[] args) {
		
		new Constructor();
		Constructor c=new Constructor();
		c.add();
		
		Constructor c1=new Constructor(5, 6);
		c1.add();
		
		Constructor c3=new Constructor("Vedii",2.1);
		
		Constructor c4=new Constructor(5,1,6);
	}

}
