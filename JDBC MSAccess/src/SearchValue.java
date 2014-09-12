import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;


public class SearchValue extends JFrame implements ActionListener{

	Connection conn;
	JButton b1;
	JTextField t1;
	JLabel l1;
	Container co;
	Statement st ;
    ResultSet rs ;
    String s;
    int i;
    
    public SearchValue()
    {
    	co=this.getContentPane();
		this.setLayout(null);
		
		l1=new JLabel("Enter a Search Value");
		l1.setBounds(70, 100, 130, 15);
		co.add(l1);
		
		t1=new JTextField(20);
		t1.setBounds(200, 100, 50, 20);
		co.add(t1);
		
		
		b1=new JButton("Search");
		b1.setBounds(160, 150, 90, 30);
		co.add(b1);
		
		b1.addActionListener(this);
		
		this.setVisible(true);
		this.setSize(400,400);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		
    }
    
    public static void main(String[] args) {
		
    	new SearchValue();
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		
		i=Integer.parseInt(t1.getText());
		System.out.println("Entered value :: "+i);
		

		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

			// Direct mdb - Without DSN
			//String url = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DSN=" + "D:\\Sample.mdb";

			// With DSN ( Data Source Name)   .... microsoft databases connected through DSN. 
			
			String url = "jdbc:odbc:Sample1";

			// specify url, username, pasword - make sure these are valid 
			conn = DriverManager.getConnection(url);
		    
			st = conn.createStatement();
			//s = "SELECT * FROM Sample1 WHERE ID= " + i+" ";
			 rs = st.executeQuery("select * from Sample1 where ID="+i);
			 
	            while(rs.next()){
	                System.out.println(rs.getObject(1)+" "+rs.getObject(2));

		
		}
		}catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			System.err.println("Got an exception! ");
			System.err.println(e1.getMessage());
			e1.printStackTrace();
		}	
		
	}	
}
