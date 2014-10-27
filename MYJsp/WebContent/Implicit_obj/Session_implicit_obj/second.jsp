<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>second.jsp</title>
</head>
<body>
	
	<%
		String str1=request.getParameter("str");
		out.print("Welcome "+str1+"in Second.jsp :: ");
	%>
	<a href="second.jsp">Second jsp page</a>
</body>
</html>