import java.util.Scanner;


public class Test1 implements Area ,Perimeter{


	static double radius,height,width,side;
 
	Scanner sc;
	
	public Test1()
	{
		sc=new Scanner(System.in);
	}
	
	public static void main(String[] args) {
	
		
		new Test1().carea();
		new Test1().cparimeter();
		new Test1().tarea();
		new Test1().sarea();

	}


	public void carea() {
		
		System.out.print("\nEnter the the value for radius :: ");
		radius=sc.nextDouble();
		System.out.println("Area of Circle is :: "+ (pi*radius*radius));
	}

	public void tarea() {
		
		
		System.out.print("\nEnter the the value for Height :: ");
		height=sc.nextDouble();
		
		System.out.print("\nEnter the the value for Width :: ");
		width=sc.nextDouble();
			
		System.out.println("Area of Triangle is :: "+ (0.5*height*width));
	}

	public void sarea() {
		
		System.out.print("\nEnter the value for side :: ");
		side=sc.nextDouble();
		
		System.out.println("\nArea of Square is :: "+(side*side));
	}


	public void cparimeter() {
		
		System.out.println("Perimeter of Circle is :: "+ (2*pi*radius));
	}

	@Override
	public void parimeter() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void area() {
		// TODO Auto-generated method stub
		
	}

}
