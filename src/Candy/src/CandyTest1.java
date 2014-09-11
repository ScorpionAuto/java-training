import java.util.Scanner;
	
public class CandyTest1 {

	/* 
	 Problem Statement :: 
	 
	After collecting a lot of candy this Halloween, the most obvious next step is to organize it into piles and draw graphs of the loot. Of course.
	The input file DATA1.txt will contain 5 lines, each being a single positive integer describing the height of the candy pile.
	The output file OUT1.txt will contain an ASCII drawing of the piles of candy. A triangle of asterisks will approximate such piles. Refer to the sample below.
	Sample Input (first 3 shown):
	 
	2
	1
	3
			        
	Sample Output (first 3 shown):
	 
	*
	**
	*
	*
	*
	**
	***
	**
	*

	*/






		int i,j,k,l,n,op,t;
		
		public CandyTest1()
		{
			Scanner sc=new Scanner(System.in);
			
			do
			{
				System.out.println("Enter the level for your candy :: ");
				n=sc.nextInt();

				for(i=1;i<=n;i++)
				{
					for(j=0;j<i;j++)
					{
						System.out.print("* ");
					}
					System.out.print("\n");
					
					if(i==n)
					{
						for(k=i-1;k>0;k--)
						{
							for(l=0;l<k;l++)
							{
								System.out.print("* ");
							}
							System.out.print("\n");
						}
					}
				}
				
				System.out.println("\n Do you want to continue Loop :: ( yes == 1)/ (No == 0)");
				op=sc.nextInt();
				
				if(op==0)
					break;
			}while(true);
		}
		
	



	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new CandyTest1();

	}

}
