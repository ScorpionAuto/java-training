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

<%@include file="subject.css" %>

<div align='center'>
	<div class='main'>
	
		<div id='heading'>
				<h2>Subject Input Table</h2>
	            <h5>Please Fill The Details</h5>
	    </div>
            
		<div class='section'>
			<form name="form1" action="sub_process.jsp" onsubmit="return alphanumeric(document.form1.text1,document.form1.text2)">
			
			<span id='data'>Subject Name:</span>
			<span id='box'><input type='text' name='text1' size='17px'></span>
			
			<span id='data'>Out Of Marks :</span>
			<span id='box'><input type='text' name='text2' size='17px'></span>
			
			<div class='footer'><input type='submit' value='Add/Insert'></div>
				 
			</form>
		</div>
	</div>
</div>

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