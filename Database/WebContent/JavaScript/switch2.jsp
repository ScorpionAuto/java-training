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
<input type="button" value="switch1" onclick="newDoc()" id="s1">


<script type="text/javascript">
	
	function newDoc() {
	if(document.getElementById("s1"))
	{
		window.location.assign("switch1.jsp");
	}
	
}
</script> 
</body>
</html>