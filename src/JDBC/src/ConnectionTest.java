import java.sql.Connection;

import javax.swing.JButton;
import javax.swing.JFrame;


public class ConnectionTest extends JFrame{

	Connection con;
	JButton b1;
	
	public ConnectionTest()
	{
		
	}
	static 
	{
		
	}

	public static void main(String[] args) {
	
		new ConnectionTest();
		
		Student s=new Student(1, "Chetan");
		System.out.println(s);
	}
}
