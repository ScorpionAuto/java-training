import java.util.Scanner;


class Test1 implements area1{
	
	static double radius,length,width,side;
	Scanner sc;
	
	public Test1(){
	
		sc= new Scanner(System.in);
	}

	@Override
	public void circle() {
		
		System.out.println("Enter the value of radius:"); 
		radius=sc.nextDouble();
		System.out.println("area of circle:"+(pi*radius*radius));
		
	}

	@Override
	public void square() {
		System.out.println("enter the value of side:");
		side=sc.nextDouble();
		System.out.println("area of square:"+(side*side));
	}
	
	@Override
	public void rectangle() {
		System.out.println("enter the value of length:");
		length=sc.nextDouble();
		System.out.println("enter the value of width:");
		width=sc.nextDouble();
	System.out.println("area of rectangle:"+(length*width));
		
	}
public static void main(String[] args) {
	Test1 t=new Test1();
	t.circle();
	t.square();
	t.rectangle();
}

}

