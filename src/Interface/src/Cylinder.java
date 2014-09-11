import java.util.Scanner;


public class Cylinder implements Area,Volume {

	static double height,radius;
	Scanner sc;
	
	public Cylinder()
	{
		sc=new Scanner(System.in);
		System.out.println("Enter the radius :: ");
		radius=sc.nextDouble();
		System.out.println("Enter the height :: ");
		height=sc.nextDouble();
	}
	@Override
	public void volume() {
		
		System.out.println("Volume of Cylinder is :: "+(pi*radius*radius*height));
	}

	@Override
	public void area() {
		// TODO Auto-generated method stub
		
		System.out.println("Area of Cylinder is :: "+((2*pi*radius*radius)+(2*pi*radius*height)));
	}

}
