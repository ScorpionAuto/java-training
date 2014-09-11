import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;


public class FileTest2 {

	public static void main(String[] args) throws IOException {
		
		int k,sum=0;
		
		File f=new File("q.txt");
		FileOutputStream out=new FileOutputStream(f);
		
		for(int i=1;i<3;i++)
		{
			out.write(i);
		}
		out.close();
		
		FileInputStream in=new FileInputStream(f);
		while((k=in.read())!=-1)
		{
			sum=sum+k;
			System.out.println(" "+k);
		}
		System.out.println("Addition :: "+sum);
		
		
//		FileOutputStream f=new file
	}
}
