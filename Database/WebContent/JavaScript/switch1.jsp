<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<p id="demo"></p>
<input type="button" value="switch2" onclick="newDoc()" id="s2">
<input type="button" value="switch3" onclick="newDoc1()" id="s3">

<script type="text/javascript">

function newDoc() {
	if(document.getElementById("s2"))
	{
		window.location.replace("switch2.jsp");
	}
}

function newDoc1() {
	if(document.getElementById("s3"))
	{
		window.location.replace("switch3.jsp");
	}
}

/* function Redirect() 
	{
		if(document.getElementById("s1"))
		{
			window.location="switch2.jsp";
		}
		else
		{
			window.location="switch3.jsp";
		}
		
		setTimeout('Redirect()', 10000);
	} */
</script> 

</body>
</html>