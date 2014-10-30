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

<body onload='document.form1.text1.focus()'>
	

<center><h4>Marks Table</h4></center>

<table border="1px" cellspacing="0" style="border-collapse: collapse;" align="center">
	<form name="form1" action="marks_process.jsp" method="post" onsubmit="return alphanumeric(document.form1.text1)">
	
	<mysql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		     url="jdbc:mysql://localhost:3306/Big_Test"
		     user="root"  password=""/>
		     
	<tr> <td>Student Name ::</td> 	
		<mysql:query dataSource="${snapshot}" var="result">
		SELECT id,stud_name from student;
		</mysql:query>
		
		<td>
		<select name="stu" id="t">
			<option value="">Select Student</option>
			<c:forEach var="row" items="${result.rows}">
				<option value="<c:out value="${row.id}"/>"> <c:out value="${row.stud_name}"/></option>
			</c:forEach>
		</select>
		</td>
		
		<td><input type="button" value="Add/Insert" onclick="new1()" id="stud_add"></td>
	</tr>
	
	<tr>
		<td>Subject Name </td> 	
		<mysql:query dataSource="${snapshot}" var="result">
		SELECT id,sub_name,out_of from subject;
		</mysql:query>
		
		<td>
			<select name="sub" onchange="swap(this, 'change')" id="sub_db">
				<option value="">Select Subject</option>
				<c:forEach var="row" items="${result.rows}">
					<option scope="<c:out value="${row.out_of}"/>" value="<c:out value="${row.id}"/>"> <c:out value="${row.sub_name}"/></option>
				</c:forEach>
			</select>
		</td>
		<td><input type="button" value="Add/Insert" onclick="new2()" id="sub_add"></td>
	</tr>
	
	<tr>
		<td>Marks </td> 
		<td><input type="text" name="text1"></td> 
		<td><input type="text" id="change" size="3" name="text2" readonly/>Out_Of</td>
	</tr>
	<tr>
		<td colspan="3"><center><input type="submit" value="Insert"></center></td>
	</tr>
</form>
</table>

<script type="text/javascript">

		var ret = function(e){ return document.getElementById(e); }
		var swap = function(elem, el){
		  ret(el).value = elem.options[elem.selectedIndex].getAttribute("scope");
		}
		
		function new1() 
		{
			if(document.getElementById("stud_add"))
				window.location="student.jsp";
		}
		
		function new2() 
		{
			if(document.getElementById("sub_add"))
				window.location="subject.jsp";
		}
	    
		
		function alphanumeric(x)  
		{   
			var letter1 = /^[0-9]+$/;
		
			if(document.form1.stu.options[document.form1.stu.selectedIndex].value!="" && document.form1.sub.options[document.form1.sub.selectedIndex].value!="" && x.value.match(letter1))  
			{    
				document.form1.text1.focus();  
				return true;  
			}  
			else  
			{  
				alert('Please select student name and subject name correctly !! ..........\n Please enter proper marks');  
				document.form1.reset();
				return false;  
			}  
		}  
		
</script>
	
</body>
</html>