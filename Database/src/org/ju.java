package org;

import java.awt.Dimension;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.*;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class ju {
    private static Object request;
    static JTable mysTable;
    //constructor method

    public static void main (String args []){

        mysTable = new JTable(3,2);
        JScrollPane myPanel = new JScrollPane(mysTable,JScrollPane.VERTICAL_SCROLLBAR_ALWAYS,
                                              JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);

        mysTable.setPreferredScrollableViewportSize(new Dimension(500,70));

        JFrame frame = new JFrame("King Musa Saloon Software");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(null);
        frame.setSize(500,500);
        frame.setVisible(true);
        frame.add(mysTable);
        //frame.add(mysTable);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loading success!");
            String url = "jdbc:mysql://localhost:3306/Big_Test";
            String name = "root";
            String password = "";

            try {
                java.sql.Connection con = DriverManager.getConnection(url, name, password);
                System.out.println("Connected.");
                // pull data from the database 
                java.sql.Statement stmts = null;
                String query = "select  id, br_name from branch ";
                stmts = con.createStatement();

                ResultSet rs = stmts.executeQuery(query);
                int li_row = 0;
                while(rs.next()){
                    mysTable.setValueAt(rs.getString("id"),li_row,0);
                    mysTable.setValueAt(rs.getString("br_name"),li_row,0);
                    int userid = rs.getInt("id");
                    String name1     = rs.getString("br_name");
                    System.out.println(name1);
                    li_row++;
                }  
            } catch (SQLException e) {
                e.printStackTrace();
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }   
    }

}