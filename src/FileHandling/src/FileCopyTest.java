import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;


public class FileCopyTest {

	public static void main(String[] args) throws IOException {
       
			int k; 
			File f=new File("q.txt");
            FileInputStream in = new FileInputStream(f);
            
            File f2=new File("sav.txt");
            FileWriter out = new FileWriter(f2.getAbsoluteFile(),true);
            
            
            while((k=in.read())!=-1)
            {
            	out.write(k);
            }

        out.close();
        
        //File f2=new File("")
        while ((k=in.read())!=-1) {
			
			System.out.println(" "+k);
		}
	}

}
