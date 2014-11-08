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
<title>Branch Name Insert</title>
</head>
<body>
<link href="style.css" rel="stylesheet" type="text/css"/>

 <%@ include file="message.html" %>
 <br/><br/><br/>
 
<%
	String nm=null;
	nm=request.getParameter("br_nm");

	if(nm==null)
	{
		
	}
	{
     try{
        	
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
         Statement st=con.createStatement();
         int i=st.executeUpdate("insert into branch(name) values('"+nm+"')");
         
     	 ResultSet rs=st.executeQuery("select * from branch");
 %>
 
 <hr><br/>
 
 		<table class="my" border="1" style="border-collapse: collapse;; width: 100%;" >
             <tr>
                 <th>Id</th>
                 <th>Branch_Name</th>
             </tr>
             <% while(rs.next()){ %>
             <tr>
                 <td> <%= rs.getInt(1) %></td>
                 <td> <%= rs.getString(2)%></td>
             </tr>
             <% } %>
         </table>
 <%	
 				
       }
       catch(Exception e){
         System.out.print(e);
         e.printStackTrace();
       }
	}
 %>

<br/><br/>
<form action="student.jsp" method="post">
	<input type="submit"  value="Back" style='background-color: #9DC45F;color: white;width: 99px;height: 40px;font-weight: bold;font-size: medium;border-radius: 12px;float: left;'>
</form>

</body>
</html>