package aaa;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.WindowConstants;
import javax.swing.table.DefaultTableModel;


public class DisplayEmpData extends JFrame implements ActionListener {
	 
    JFrame frame1;
    JButton b1;
    Connection con;
    ResultSet rs, rs1;
    Statement st, st1;
    PreparedStatement pst;
    String ids;
    static JTable table;
    String[] columnNames = {"id", "br_name", "stud_name", "sub_name", "marks", "percentage"};

 
    DisplayEmpData() {
 
        b1 = new JButton("Display");
        b1.setBounds(150, 150, 150, 20);
        b1.addActionListener(this);
        setLayout(null);
        setVisible(true);
        setSize(500, 500);
        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);

        add(b1);
    }
 
    public void actionPerformed(ActionEvent ae) {
        if (ae.getSource() == b1) {
            showTableData();
        }
 
    }
 
    public void showTableData() {
 
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
      
        String id = "";
        String br_name = "";
        String stud_name = "";
        String sub_name = "";
        String marks = "";
        String percentage = "";
 
        try {
        	Class.forName("com.mysql.jdbc.Driver").newInstance();
	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test","root","");
	        pst = con.prepareStatement("select * from final");
            ResultSet rs = pst.executeQuery();
            int i = 0;
            if (rs.next()) {
            	id = rs.getString("id");
                br_name = rs.getString("br_name");
                stud_name = rs.getString("stud_name");
                sub_name = rs.getString("sub_name");
                marks = rs.getString("marks");
                percentage = rs.getString("percentage");
                
                model.addRow(new Object[]{id,br_name,stud_name,sub_name,marks,percentage});
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
    }
 
    public static void main(String args[]) {
        new DisplayEmpData();
    }
}
