import java.util.Scanner;


public class rectangle1 implements area2 {
	static double length,width;
	Scanner sc;
	public rectangle1(){
		sc= new Scanner(System.in);
		System.out.println("enter the value of length:");
		length=sc.nextDouble();
		System.out.println("enter the value of width:");
		width=sc.nextDouble();

}
	
}