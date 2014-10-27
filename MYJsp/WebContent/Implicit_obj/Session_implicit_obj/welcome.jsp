<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
	
	<%
		String str=request.getParameter("nm");
		out.print("Welcome :: "+str);
		session.setAttribute("user", str);
	//	<a href="index.html">Second jsp page</a>
		
	%>

</body>
</html>