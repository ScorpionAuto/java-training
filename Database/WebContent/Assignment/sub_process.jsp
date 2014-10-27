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
	nm=request.getParameter("sub_nm");
	out.print("Subject Name :: "+nm);
	
	int ou= Integer.parseInt(request.getParameter("out"));
	out.print("<br/>Out_of :: "+ou);
	
     try{
        	
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
         Statement st=con.createStatement();
         int j=st.executeUpdate("insert into subject(sub_name,out_of) values('"+nm+"','"+ou+"')");
    	 out.println("<br/>Data is successfully inserted!");
        
         nm="";
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