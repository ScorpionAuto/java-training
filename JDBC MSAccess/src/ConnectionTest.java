import java.awt.Container;
import java.awt.Label;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;


public class ConnectionTest extends JFrame implements ActionListener{

	Connection conn;
	JButton b1;
	JTextField t1,t2;
	JLabel l1,l2;
	Container co;
	Statement st ;
    ResultSet rs ;
	
	public ConnectionTest()
	{
		co=this.getContentPane();
		this.setLayout(null);
		
		l2=new JLabel("Name");
		l2.setBounds(100, 100, 50, 15);
		co.add(l2);
		
		t2=new JTextField(20);
		t2.setBounds(140, 100, 50, 20);
		co.add(t2);
		
		
		b1=new JButton("Show");
		b1.setBounds(130, 150, 90, 30);
		co.add(b1);
		
		b1.addActionListener(this);
		
		this.setVisible(true);
		this.setSize(400,400);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
	}

	public static void main(String[] args) {
	
		new ConnectionTest();

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		
		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

			// Direct mdb - Without DSN
			//String url = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DSN=" + "D:\\Sample.mdb";

			// With DSN ( Data Source Name)   .... microsoft databases connected through DSN. 
			
			String url = "jdbc:odbc:Sample1";

			// specify url, username, pasword - make sure these are valid 
			conn = DriverManager.getConnection(url);
		    
			st = conn.createStatement();
            rs = st.executeQuery("select * from Sample1");
            while(rs.next()){
                System.out.println(rs.getObject(1)+" "+rs.getObject(2));
            }

			System.out.println("Connection Succesfull");
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			System.err.println("Got an exception! ");
			System.err.println(e1.getMessage());
			e1.printStackTrace();
		}
	}
}
