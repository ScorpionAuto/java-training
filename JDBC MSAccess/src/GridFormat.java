import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;


public class GridFormat extends JFrame implements ActionListener{

	
	Connection conn;
	JButton b1;
	JTextField t1,t2;
	JLabel l1,l2;
	Container co;
	Statement st ;
    ResultSet rs ;
    static JTable table;
    JFrame frame1;
    String[] columnNames = {"Id", "Name"};
    String from;
    PreparedStatement pre,pre1;
    
	public GridFormat()
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
            rs = st.executeQuery("select * from Sample1");
            while(rs.next()){
                System.out.println(rs.getObject(1)+" "+rs.getObject(2));
            }
            
            
            //-------------------------------------------------------------------------------
          //  Grid Table View Logic 
            
            
            
            frame1 = new JFrame("Database Search Result");
            frame1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame1.setLayout(new BorderLayout());
    //TableModel tm = new TableModel();
            DefaultTableModel model = new DefaultTableModel();
            model.setColumnIdentifiers(columnNames);
    //DefaultTableModel model = new DefaultTableModel(tm.getData1(), tm.getColumnNames());
    //table = new JTable(model);
            table = new JTable();
            table.setModel(model);
            table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);
            table.setFillsViewportHeight(true);
            JScrollPane scroll = new JScrollPane(table);
            scroll.setHorizontalScrollBarPolicy(
                    JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
            scroll.setVerticalScrollBarPolicy(
                    JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
            from = t2.getText();
    //String textvalue = textbox.getText();
            String uname = "";
           
     
            try {
                pre = conn.prepareStatement("select * from Sample1 where Name='" + from + "'");
                pre1=conn.prepareStatement("Select * from Sample1");
                ResultSet rs = pre.executeQuery();
                ResultSet rs1=pre1.executeQuery();
                
      
                int i = 0;
                if (rs.next()) {
                	String id=rs.getString("ID");
                    uname = rs.getString("Name");
                    model.addRow(new Object[]{id,uname});
                    i++;
                }
                if (i < 1) {
                    JOptionPane.showMessageDialog(null, "No Record Found", "Error", JOptionPane.ERROR_MESSAGE);
                }
                if (i == 1) {
                    System.out.println(i + " Record Found");
                } else {
                    System.out.println(i + " Records Found");
                }
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
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
