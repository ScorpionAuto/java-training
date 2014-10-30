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
<title>subject.jsp</title>
</head>
<body onload='document.form1.text1.focus()'>

<center><h4>Subject Table</h4></center>
<table border="1px" cellspacing="0" style="border-collapse: collapse;" align="center">
	<form name="form1" action="sub_process.jsp" onsubmit="return alphanumeric(document.form1.text1,document.form1.text2)">
		<tr>
			<td>Subject Name</td>
			<td><input type="text" name="text1"></td>
		</tr>
		<tr>
			<td>Out_of</td>
			<td><input type="text" name="text2"></td>
		</tr>
		<tr>
			<td colspan="2"><center><input type="submit" value="Insert"></center></td>
		</tr>
	</form>
</table>

<script>
	function alphanumeric(x,y)  
	{   
		var letter1 = /^[0-9]+$/;
		var letters=/^[a-z A-Z _]+$/;
		
		if(x.value.match(letters) && y.value.match(letter1))  
		{    
			document.form1.text1.focus();  
			return true;  
		}  
		else  
		{  
			alert('Please enter subject name & out_of values correctly');  
			document.form1.reset();
			return false;  
		}  
	}  
</script> 
</body>
</html>