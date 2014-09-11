import java.awt.Rectangle;
import java.util.Scanner;


public class MainTest {

    static int op,op1;

	public static void main(String[] args) {
		
		new MainTest();
		
		Scanner sc1=new Scanner(System.in);

		do
		{
		System.out.println("\n\nMenu ");
		System.out.println("1.Area");
		System.out.println("2.Perimeter");
		System.out.println("3.Volume");
		System.out.println("Enter your option :: ");
		op=sc1.nextInt();
		
		switch (op) {
		case 1:
			System.out.println("\n\nArea Of");
			System.out.println("1.Circle");
			System.out.println("2.Square");
			System.out.println("3.Cylinder");
			System.out.println("Enter your option :: ");
			op1=sc1.nextInt();
			
			switch(op1)
			{
				case 1: new Circle().area();
						break;
						
				case 2: new Square().area();
						break;

				case 3: new Cylinder().area();
						break;
				default: 
			}
			break;
			
		case 2: 
			System.out.println("Perimeter");
			new Circle().parimeter();
			break;

		case 3:

			System.out.println("\n\nVolume Of");
			System.out.println("1.Sphere");
			System.out.println("2.Cylinder");
			System.out.println("Enter your option :: ");
			op1=sc1.nextInt();
			
			switch(op1)
			{
						
				case 1:  new Sphere().volume();
						break;
						
				case 2: new Cylinder().volume();
						break;
						
				default: 
			}
			
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
