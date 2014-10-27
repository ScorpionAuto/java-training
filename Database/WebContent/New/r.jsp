<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="mysql"%>

<html>
<head>
<title>Insert Operation</title>
</head>
<body>

<form method="post" action="r.jsp">
	Name ::<input type="text" name="fname">
	Salary ::<input type="text" name="sal">
	<input type="submit" value="Insert">
</form>

<%
	String nm=null;
	String s=null;
	nm=request.getParameter("fname");
	s=request.getParameter("sal");

	
        try{
        	
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into info(name,salary) values('"+nm+"','"+s+"')");
           out.println("Data is successfully inserted!");
           s="";
           nm="";
           
           
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
	
%>


<mysql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/new"
     user="root"  password=""/>
 
<mysql:query dataSource="${snapshot}" var="result">
	SELECT * from info order by id desc;
</mysql:query>
 
<table border="1" width="100%">
<tr>
   <th>Id</th>
   <th> Name</th>
   <th>Salary</th>
</tr>

<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.salary}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>