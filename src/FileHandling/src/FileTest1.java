import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;


public class FileTest1 {

	int i,j,k,l,n,op,t;

	
	public static void main(String[] args) throws IOException {

		int op,ch;
		FileTest1 file=new FileTest1();
		
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

	public void FileHandling() throws IOException {

		String op;
		int i;
		
		File f=new File("q.txt");
		FileInputStream in=new FileInputStream(f);
		
		Scanner sc=new Scanner(System.in);
						
		while((t=in.read())!=-1)
		{
			System.out.println("\nLevel :: "+t);
			Console(t);
		}
		
		System.out.println("\n Do you want to save the output ");
		op=sc.next();
		System.out.println("Output is Saved");
		
		if(op.equalsIgnoreCase("y") || op.equalsIgnoreCase("Yes"))
		{
			while((t=in.read())!=-1)
			{
				System.out.println("\nLevel :: "+t);
				fconsole(t);
			}
			
		}
	}

	private void fconsole(int n) throws IOException {
		
		String content="* ";
		File f=new File("w.txt");
		
		if (!f.exists()) {
			f.createNewFile();
		}
		
		FileWriter wr=new FileWriter(f.getAbsoluteFile(),true);
		BufferedWriter bw=new BufferedWriter(wr);
		
		bw.write("Level "+n);
		bw.newLine();
		for(int i=1;i<=n;i++)
		{
			for(int j=0;j<i;j++)
			{
				bw.write(content);
				
			}
			bw.newLine();
			
			if(i==n)
			{
				for(int k=i-1;k>0;k--)
				{
					for(int l=0;l<k;l++)
					{
						bw.write(content);
						
					}
					bw.newLine();
				}
			}
		}

		bw.close();
	}

}


