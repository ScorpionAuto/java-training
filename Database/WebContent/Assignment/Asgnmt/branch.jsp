<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>branch.jsp</title>
</head>

<body onload='document.form1.text1.focus()'>    

<center><h4>Branch Table</h4></center>
<table border="1px" cellspacing="0" style="border-collapse: collapse;" align="center">
	<form name="form1" action="br_process.jsp" onsubmit="return alphanumeric(document.form1.text1)">
		<tr>
			<td>Branch Name</td>
			<td><input type="text" name="text1"></td>
		</tr>
		 <tr>
		 	<td colspan="2">
				<center><input type="submit" value="Insert"/></center>
			</td>
		</tr>
	</form>
</table>

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