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
<title>Dropdownlist opration with Database</title>
</head>

<body>
<form action="marks_process.jsp">
	<mysql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		     url="jdbc:mysql://localhost:3306/Big_Test"
		     user="root"  password=""/>
		     
	Student_name :: 	
		<mysql:query dataSource="${snapshot}" var="result">
		SELECT id,stud_name from student;
		</mysql:query>
		
		
		<select name="stu" id="t">
			<option value="">Select Student</option>
			<c:forEach var="row" items="${result.rows}">
				<option value="<c:out value="${row.id}"/>"> <c:out value="${row.stud_name}"/></option>
			</c:forEach>
		</select><br/>
		
	Subject_name :: 	
		<mysql:query dataSource="${snapshot}" var="result">
		SELECT id,sub_name,out_of from subject;
		</mysql:query>
		
		
		<select name="sub" onchange="swap(this, 'change')" id="sub_db">
			<option value="">Select Subject</option>
			<c:forEach var="row" items="${result.rows}">
				<option scope="<c:out value="${row.out_of}"/>" value="<c:out value="${row.id}"/>"> <c:out value="${row.sub_name}"/></option>
			</c:forEach>
		</select>
		
	&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="change" size="3" name="val" readonly/>Out_Of<br/>
	<br/>
	Marks :: <input type="text" name="mrk"><br/>
	<input type="submit" value="Insert">
</form>

<script type="text/javascript">

		var ret = function(e){ return document.getElementById(e); }
		var swap = function(elem, el){
		  ret(el).value = elem.options[elem.selectedIndex].getAttribute("scope");
		}
</script>
	
</body>
</html>