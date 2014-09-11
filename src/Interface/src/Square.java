import java.awt.Rectangle;
import java.util.Scanner;


public class Square implements Area{

	Scanner sc;
	static double side;
	
	public Square()
	{
		sc=new Scanner(System.in);
		System.out.println("Enter the value for Square Side :: ");
		side=sc.nextDouble();
	}
	@Override
	public void area() {
		System.out.println("Area of Square is :: "+(side*side));
	}

}
