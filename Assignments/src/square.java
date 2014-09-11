import java.util.Scanner;


public class square implements area2 {
	static double side;
	Scanner sc;
	public square(){
		sc= new Scanner(System.in);
		System.out.println("Enter the value of side:");
		side=sc.nextDouble();

}
}