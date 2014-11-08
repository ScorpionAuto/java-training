<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>branch.jsp</title>
</head>

<body onload='document.form1.text1.focus()'>    

<%@include file="branch.css" %>

<div align='center'>
	<div class='main'>
	
		<div id='heading'>
				<h2>Branch Input Table</h2>
	            <h5>Please Fill The Details</h5>
	    </div>
            
		<div class='section'>
			<form name="form1" action="br_process.jsp" onsubmit="return alphanumeric(document.form1.text1)">
			
			<span id='data'>Branch Name:</span>
			<span id='box'><input type='text' name='br_nm' size='17px'></span>
			
			<div class='footer'><input type='submit' value='Add/Insert'></div>
				 
			</form>
		</div>
	</div>
</div>

<script>
	function alphanumeric(y)  
	{   
		var letter1=/^[a-z A-Z _]+$/;
		
		if(y.value.match(letter1))  
		{    
			document.form1.text1.focus();  
			return true;  
		}  
		else  
		{  
			alert('Please enter Branch correctly');  
			document.form1.reset();
			return false;  
		}  
		
		
	}  
		
</script> 
</body>
</html>