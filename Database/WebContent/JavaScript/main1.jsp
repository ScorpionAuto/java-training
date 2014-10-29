<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String a1,b1; %>
<input type="text" name="a" id="b">
<%
	 a1=request.getParameter("a");
	out.print("<br/>marks :: "+a1);
	
	 b1=request.getParameter("b");
	out.print("<br/>marks :: "+b1);
	
%>
	
<input onmouseover="fun1()" type="button" name="cc" id="cc1" value="button">

<script type="text/javascript">
	function fun1()
	{
		document.getElementById("b");
	}
</script>
</body>
</html>