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
<%! double ou;%>

<%
	int stud_id= Integer.parseInt(request.getParameter("stu"));
	out.print("<br/>Student_id :: "+stud_id);
	
 	int sub_id= Integer.parseInt(request.getParameter("sub"));
	out.print("<br/>subject_id :: "+sub_id);  
	
	double mrk=Double.parseDouble(request.getParameter("mrk"));
	out.print("<br/>marks :: "+mrk);
	
	
	 double o=Double.parseDouble(request.getParameter("val"));
		out.print("<br/>Out_of :: "+o); 
	
     try{
        	
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
         Statement st=con.createStatement();
                 
         double per=(mrk/o)*100;
         out.print("<br/>percentage :: "+per); 
         
         int j=st.executeUpdate("insert into marks(sub_id,stud_id,marks,percentage) values('"+sub_id+"','"+stud_id+"','"+mrk+"','"+per+"')");
     	 out.println("<br/>Data is successfully inserted!"); 
        

      }
      catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
      }
	
%>

<%-- 
<mysql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/Big_Test"
     user="root"  password=""/>
 
<mysql:query dataSource="${snapshot}" var="result">
SELECT * from student;
</mysql:query>

<table>
	<tr>
		<th>id</th>
		<th>br_id</th>
		<th>stud_name</th>
	</tr>
	<tr>
		<td><c:out value="${row.id}"/></td>
		<td><c:out value="${row.br_id}"/></td>
		<td><c:out value="${row.stud_name}"/></td>
	</tr>
</table> --%>
</body>
</html>