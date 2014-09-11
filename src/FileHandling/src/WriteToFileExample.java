import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
 
public class WriteToFileExample {
	
	public WriteToFileExample(int n) throws IOException
	{

		String content="* ";
		File f=new File("out.txt");
		
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
	
	public static void main(String[] args) throws IOException {

		new WriteToFileExample(2);
	
	}
}