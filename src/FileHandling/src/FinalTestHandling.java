import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
public class FinalTestHandling {

	int i,j,k,l,n,op,t;

	
	public static void main(String[] args) throws IOException {

		int op,ch;
		FinalTestHandling file=new FinalTestHandling();
		
		do
		{
			System.out.println("\n\n######## Menu #########");
			System.out.println("1.FileHandling");
			System.out.println("2.Console");
			
			System.out.print("Enter your option :: ");
			Scanner sc=new Scanner(System.in);
			op=sc.nextInt();
			
			switch (op) {
			case 1:
				file.FileHandling();
				break;

			case 2:
				int i;
				System.out.println("Enter the level for your candy :: ");
				i=sc.nextInt();
				file.Console(i);
				
				break;
				
			default:
				break;
			}
			
			System.out.println("\nDo you want to continue the Main Loop :: (yes==1) / (No==0)");
			ch=sc.nextInt();
			
			if(ch==0)
				break;
		}while(true);
	}
	
	public void FileHandling() throws IOException {

		String op;
		int i,j,k;
		
		File f=new File("q.txt");
		FileInputStream in=new FileInputStream(f);
		
		Scanner sc=new Scanner(System.in);
						
		while((t=in.read())!=-1)
		{
			System.out.println("\nLevel :: "+t);
			Console(t);
		}
		
		System.out.println("Do you want to save the File :: (yes ==1) / (No== 0)");
		j=sc.nextInt();
		
		if(j==1)
		{
			FileInputStream in1=new FileInputStream(f);
			
			while((k=in1.read())!=-1)
			{
				new WriteToFileExample(k);
			}
		}
	}


	public void Console(int n) {

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

}


}
