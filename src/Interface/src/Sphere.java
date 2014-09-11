import java.util.Scanner;


public class Sphere implements Volume,Area{

	Scanner sc;
	static double radius;
	
	 public Sphere() {
		 
		sc=new Scanner(System.in);
		System.out.println("Enter the value for radius :: ");
		radius=sc.nextDouble();
	}

	@Override
	public void volume() {
		System.out.println("Volume Of the Sphere is :: "+((4/3)*pi*radius*radius*radius));
		
	}

	@Override
	public void area() {
		// TODO Auto-generated method stub
		
	}
	 
}
