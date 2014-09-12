import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;


public class GridFormat extends JFrame implements ActionListener{

	
	Connection conn;
	JButton show;
	Container co;
	Statement st ;
    ResultSet rs ;
    static JTable table;
    JFrame frame1;
    String[] columnNames = {"Id", "Name"};

        
	public GridFormat()
	{
		
		co=this.getContentPane();
		this.setLayout(null);
		
		show=new JButton("Show");
		show.setBounds(130, 150, 90, 30);
		co.add(show);
		
		show.addActionListener(this);
		
		this.setVisible(true);
		this.setSize(400,400);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
	}
	
	public static void main(String[] args) {
	
		new GridFormat();
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
            
            //-------------------------------------------------------------------------------
          //  Grid Table View Logic 
            
            
            
            frame1 = new JFrame("Database Search Result");
            frame1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame1.setLayout(new BorderLayout());

            DefaultTableModel model = new DefaultTableModel();
            model.setColumnIdentifiers(columnNames);

            table = new JTable();
            table.setModel(model);
            table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);
            table.setFillsViewportHeight(true);
            JScrollPane scroll = new JScrollPane(table);
            scroll.setHorizontalScrollBarPolicy(
                    JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
            scroll.setVerticalScrollBarPolicy(
                    JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);


           
     
            try {

                ResultSet rs1=st.executeQuery("Select * from Sample1");
                
                
                while(rs1.next())
                {

                	model.addRow(new Object[]{rs1.getString(1),rs1.getString(2)});
                }
      
            } catch (Exception ex) {
            }
            frame1.add(scroll);
            frame1.setVisible(true);
            frame1.setSize(400, 300);
            
            
            
            //-------------------------------------------------------------------------------
            

			System.out.println("Connection Succesfull");
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			System.err.println("Got an exception! ");
			System.err.println(e1.getMessage());
			e1.printStackTrace();
		}
	}

	
}
