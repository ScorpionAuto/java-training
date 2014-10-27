package aaa;
//STEP 1. Import required packages
import java.sql.*;

public class JDBCExample {
 // JDBC driver name and database URL
	 static  String JDBC_DRIVER; 
	 static  String DB_URL;

	 //  Database credentials
	 static  String USER;
	 static  String PASS;
	
	public JDBCExample()
	{
		JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		DB_URL = "jdbc:mysql://localhost/Big_Test";
		USER = "root";
		PASS = "";
		
		Connection conn = null;
		 Statement stmt = null;
		 try{
		    //STEP 2: Register JDBC driver
		    Class.forName("com.mysql.jdbc.Driver");

		    //STEP 3: Open a connection
		    System.out.println("Connecting to a selected database...");
		    conn = DriverManager.getConnection(DB_URL, USER, PASS);
		    System.out.println("Connected database successfully...");
		    
		    //STEP 4: Execute a query
		    System.out.println("Creating statement...");
		    stmt = conn.createStatement();

		    String sql = "SELECT id, br_name, stud_name, sub_name,marks,percentage FROM final";
		    ResultSet rs = stmt.executeQuery(sql);
		    //STEP 5: Extract data from result set
		    while(rs.next()){
		       //Retrieve by column name
		       int id  = rs.getInt("id");
		       String br_name = rs.getString("br_name");
		       String stud_name = rs.getString("stud_name");
		       String sub_name = rs.getString("sub_name");
		       double marks  = rs.getInt("marks");
		       double percentage  = rs.getInt("percentage");

		       //Display values
		       System.out.print("ID: " + id);
		       System.out.print(", br_name: " + br_name);
		       System.out.print(", stud_name: " + stud_name);
		       System.out.println(", sub_name: " + sub_name);
		       System.out.println(", marks: " + marks);
		       System.out.println(", percentage: " + percentage);
		       
		    }
		    rs.close();
		 }catch(SQLException se){
		    //Handle errors for JDBC
		    se.printStackTrace();
		 }catch(Exception e){
		    //Handle errors for Class.forName
		    e.printStackTrace();
		 }finally{
		    //finally block used to close resources
		    try{
		       if(stmt!=null)
		          conn.close();
		    }catch(SQLException se){
		    }// do nothing
		    try{
		       if(conn!=null)
		          conn.close();
		    }catch(SQLException se){
		       se.printStackTrace();
		    }//end finally try
		 }//end try
	}
 

 
 public static void main(String[] args) {	 
	 new JDBCExample(); 
	 System.out.println("Goodbye!");
 }//end main
}