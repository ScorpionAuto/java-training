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
<%
	String nm=null;
	nm=request.getParameter("br_nm");

	
     try{
        	
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
         Statement st=con.createStatement();
         int i=st.executeUpdate("insert into branch(br_name) values('"+nm+"')");
         out.println("Data is successfully inserted!\n\n");
         nm="";
      }
      catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
      }
	
%>

<mysql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/Big_Test"
     user="root"  password=""/>
 
<mysql:query dataSource="${snapshot}" var="result">
SELECT br_name from branch;
</mysql:query>


<select>
	<c:forEach var="row" items="${result.rows}">
		<option value="br_name"><c:out value="${row.br_name}"/></option>
	</c:forEach>
</select>

</body>
</html>