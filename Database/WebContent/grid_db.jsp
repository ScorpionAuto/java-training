<%@page import="java.awt.Container"%>
<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@page import="java.awt.BorderLayout,java.awt.event.ActionEvent,java.awt.event.ActionListener,java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet,java.sql.Statement,javax.swing.JButton,javax.swing.JFrame,javax.swing.JOptionPane" %>
<%@page import="javax.swing.JScrollPane,javax.swing.JTable,javax.swing.WindowConstants,javax.swing.table.DefaultTableModel" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	JFrame frame1;
    JButton b1;
    Connection con;
    ResultSet rs, rs1;
    Statement st, st1;
    PreparedStatement pst;
    String ids;
    static JTable table;
    String[] columnNames = {"id", "br_name", "stud_name", "sub_name", "marks", "percentage"};
%>
<%
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
	    while (rs.next()) {
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
	frame1.setSize(400, 142);
	
	out.print(model);
%>
</body>
</html>