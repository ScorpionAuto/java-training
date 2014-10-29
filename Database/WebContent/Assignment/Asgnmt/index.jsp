<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="mysql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index.jsp</title>
</head>
<body>

<%! Connection con;
	Statement st;
	ResultSet rs,rs1;
	double per;
%>
	



<form action="marks.jsp" method="post">

	Marks :: <input type="submit"  value="Add/Insert"></button>

</form>		     
<br/>
<hr>
<center><h3> Mark Table List</h3></center>
<%
	
     try{
        
    		 
    	 	
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
          st=con.createStatement();
           
		  rs=st.executeQuery("select * from marks");

%>
		<table border="1" style="border-collapse: collapse;; width: 100%;" >
            <tr>
                <th>Id</th>
                <th>Subject_Id</th>
                <th>Student_Id</th>
                <th>Marks</th>
                <th>Percentage</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getInt(1) %></td>
                <td> <%= rs.getInt(2) %></td>
                <td> <%= rs.getInt(3) %></td>
                <td> <%= rs.getInt(4) %></td>
                <td> <%= rs.getDouble(5) %></td>
            </tr>
            <% } %>
        </table>
<%	
				
      }
      catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
      }
 	
%>

</body>
</html>	
