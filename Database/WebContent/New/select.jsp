<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="mysql"%>

<html>
<head>
<title>SELECT Operation</title>
</head>
<body>
<mysql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/new"
     user="root"  password=""/>
 
<mysql:query dataSource="${snapshot}" var="result">
SELECT * from info;
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