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
<title>Student_id , Subject_id , Marks , Percentage Insert</title>
</head>
<body>

<%
	int stud_id= Integer.parseInt(request.getParameter("stu"));
//	out.print("<br/>Student_id :: "+stud_id);
	
 	int sub_id= Integer.parseInt(request.getParameter("sub"));
//	out.print("<br/>subject_id :: "+sub_id);  
	
	double mrk=Double.parseDouble(request.getParameter("text1"));
//	out.print("<br/>marks :: "+mrk);
	
	
	 double o=Double.parseDouble(request.getParameter("text2"));
		//out.print("<br/>Out_of :: "+o); 
	
	if(mrk==0 && o==0)
	{
		
	}
	else
	{
     try{
        	
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
         Statement st=con.createStatement();
                 
         double per=(mrk/o)*100;
         //out.print("<br/>percentage :: "+per); 
         
          int j=st.executeUpdate("insert into marks(sub_id,stud_id,marks,percentage) values('"+sub_id+"','"+stud_id+"','"+mrk+"','"+per+"')");
       	 out.println("<br/>Data is successfully inserted!"); 

		ResultSet rs=st.executeQuery("select * from marks");
%>
		<table border="1" style="border-collapse: collapse;; width: 100%;" >
            <tr>
                <th>Id</th>
                <th>Student_Id</th>
                <th>Subject_Id</th>
                <th>Marks</th>
                <th>Percentage</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getInt(1) %></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getString(3) %></td>
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
	}
%>

<form action="index.jsp" method="post">
	<input type="submit"  value="Index">
</form>

</body>
</html>