import java.util.Scanner;


public class Test2{

    static int op,op1;
	
	public static void main(String[] args) {
		
		Test2 m= new Test2();
		
		Scanner sc1=new Scanner(System.in);

		do
		{
		System.out.println("\n\nMenu ");
		System.out.println("1.Area");
		System.out.println("2.Volume");
		System.out.println("Enter your option :: ");
		op=sc1.nextInt();
		
		switch (op) {
		case 1:
			}
			break;
			
		case 2: 
			System.out.println("volume");
			break;

		

		default:
			System.out.println("You have entered wrong choice :: ");
			break;
		}
		
		if(op>2)
			break;
		}while(true);
		
	}
}