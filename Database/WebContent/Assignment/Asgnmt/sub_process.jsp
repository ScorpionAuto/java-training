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
<title>Subject Name Insert</title>
</head>
<body>
<%
	String nm=null;
	nm=request.getParameter("text1");
	//out.print("Subject Name :: "+nm);
	
	int ou= Integer.parseInt(request.getParameter("text2"));
	//out.print("<br/>Out_of :: "+ou);
	
	if(nm==null && ou==0)
	{
		
	}
	else
	{
     try{
        	
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
         Statement st=con.createStatement();
         int j=st.executeUpdate("insert into subject(sub_name,out_of) values('"+nm+"','"+ou+"')");
         out.println("<br/>Data is successfully inserted!<br/><br/>");
         
     	 ResultSet rs=st.executeQuery("select * from subject");
 %>
 		<table border="1" style="border-collapse: collapse;; width: 100%;" >
             <tr>
                 <th>id</th>
                 <th>Subject_Name</th>
                 <th>Out_of</th>
             </tr>
             <% while(rs.next()){ %>
             <tr>
                 <td> <%= rs.getInt(1) %></td>
                 <td> <%= rs.getString(2)%></td>
                 <td> <%=  rs.getInt(3) %></td>
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
 
 <form action="index.jsp" method="post">
	<input type="submit"  value="Index">
</form>
 
</body>
</html>