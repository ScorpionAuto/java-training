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


public class InsertValues extends JFrame implements ActionListener {

	Connection conn;
	JButton b1;
	JTextField t1;
	JLabel l1;
	Container co;
	Statement st ;
    ResultSet rs ;
    String s;
    
	public InsertValues()
	{
		co=this.getContentPane();
		this.setLayout(null);
		
		l1=new JLabel("Name");
		l1.setBounds(100, 100, 50, 15);
		co.add(l1);
		
		t1=new JTextField(20);
		t1.setBounds(140, 100, 50, 20);
		co.add(t1);
		
		b1=new JButton("Insert");
		b1.setBounds(130, 150, 90, 30);
		co.add(b1);
		
		b1.addActionListener(this);
		
		this.setVisible(true);
		this.setSize(400,400);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
	}
	
	public static void main(String[] args) {
		new InsertValues();
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		
		s=t1.getText();

		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

			// Direct mdb - Without DSN
			//String url = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DSN=" + "D:\\Sample.mdb";

			// With DSN ( Data Source Name)   .... microsoft databases connected through DSN. 
			
			String url = "jdbc:odbc:Sample1";

			// specify url, username, pasword - make sure these are valid 
			conn = DriverManager.getConnection(url);
		    
			st = conn.createStatement();
			int count = st.executeUpdate("insert into Sample1 (Name) values('"+s+"')");
            
			System.out.println("Count :: "+count);
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			System.err.println("Got an exception! ");
			System.err.println(e1.getMessage());
			e1.printStackTrace();
		}
		
	}
}
