<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>Insert Operation</title>
</head>
<body>
 

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1:3306/new"
     user="root"  password=""/>
 
 
 
<sql:update dataSource="${snapshot}" var="result1">
insert into info (name,salary) values ('aaa',12000);
</sql:update>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from info order by id desc;
</sql:query>

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