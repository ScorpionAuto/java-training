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
<title>student.jsp</title>
</head>

<body onload='document.form1.text1.focus(),document.form1.br.focus()'>

<center><h4>Student Table</h4></center>
<table border="1px" cellspacing="0" style="border-collapse: collapse;" align="center">
	<form name="form1" action="stud_process.jsp" onsubmit="return alphanumeric(document.form1.text1)">
		<tr>
			<td>Student Name </td>
			<td><input type="text" name="text1"></td>
		</tr>
		
		<tr>
			<td>Branch name</td> 	
				<mysql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
				     url="jdbc:mysql://localhost:3306/Big_Test"
				     user="root"  password=""/>
		 
				<mysql:query dataSource="${snapshot}" var="result">
				SELECT id,br_name from branch;
				</mysql:query>
		
			<td>
				<select name="br" id="t">
					<option value="">Select Branch</option>
					<c:forEach var="row" items="${result.rows}">
						<option value="<c:out value="${row.id}"/>"> <c:out value="${row.br_name}"/></option>
					</c:forEach>
				</select>
			</td>
		</tr>	
		<tr>
			<td colspan="2"><center><input type="submit" value="Insert"></center></td>
		</tr>
</form>
</table>

<script>
	function alphanumeric(y)  
	{   
		 var letter1=/^[a-z A-Z _]+$/;
		if( document.form1.br.options[document.form1.br.selectedIndex].value!="" && y.value.match(letter1))  
		{    
			document.form1.text1.focus();  
			return true;  
		}  
		else  
		{  
			alert('Please enter Subject & Branch correctly');  
			document.form1.reset();
			return false;  
		}   
		
	}  
		
</script> 
</body>
</html>