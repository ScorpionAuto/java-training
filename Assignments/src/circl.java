import java.util.Scanner;

public class circl {
	static double radius;
	Scanner sc;
	public circl(){
		sc= new Scanner(System.in);
		System.out.println("enter the value of radius:");
		radius=sc.nextDouble();
	}
public void area2(){
	double pi;
 	System.out.println("area of circle is:"+(pi*radius*radius));
}
}


