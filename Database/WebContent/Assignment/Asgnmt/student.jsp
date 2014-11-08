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

<%@include file="student.css" %>

<div align='center'>
	<div class='main'>
	
		<div id='heading'>
				<h2>Student Input Table</h2>
	            <h5>Please Fill The Details</h5>
	    </div>
            
		<div class='section'>
			<form name="form1" action="stud_process.jsp" onsubmit="return alphanumeric(document.form1.text1)">
			
			<span id='data'>Student Name:</span>
			<span id='box'><input type='text' name='text1' size='17px'></span>
			
			<span id='data'>Branch Name:</span>
			<span id='box'>
				<mysql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
				     url="jdbc:mysql://localhost:3306/Big_Test"
				     user="root"  password=""/>
		 
				<mysql:query dataSource="${snapshot}" var="result">
				SELECT id,name from branch;
				</mysql:query>
				
				<select name="br" id="t">
					<option value="">Select Branch</option>
					<c:forEach var="row" items="${result.rows}">
						<option value="<c:out value="${row.id}"/>"> <c:out value="${row.name}"/></option>
					</c:forEach>
				</select>
				</span>
			<span id="buton"><input type="button" value="Add/Insert" onclick="new2()" id="branch_add"></span>
			<div class='footer'><input type='submit' value='Add/Insert'></div>
				 
			</form>
		</div>
	</div>
</div>


<script>

	function new2() 
	{
			if(document.getElementById("branch_add"))
				window.location="branch.jsp";
	}
	
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
			alert('Please enter Student Name & Choose Branch correctly');  
			document.form1.reset();
			return false;  
		}   
		
	}  
		
</script> 
</body>
</html>
