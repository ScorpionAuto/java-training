import java.util.Scanner;


public class Circle implements Perimeter,Area{

	Scanner sc;
	static double radius;
	
	public Circle()
	{
		sc=new Scanner(System.in);
		System.out.println("Enter the value for radius :: ");
		radius=sc.nextDouble();
	}
	
	@Override
	public void area() {
		System.out.println("Area of Circle is :: "+(pi*radius*radius));
		
	}

	@Override
	public void parimeter() {	
		System.out.println("Perimeter of Circle is :: "+(2*pi*radius));
	}

}
