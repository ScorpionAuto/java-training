

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
	
		String str1=(String)pageContext.getAttribute("nm1",PageContext.SESSION_SCOPE);
		out.print("<br/>Welcome "+str1+"  in Second.jsp :: ");
		
		out.print("<br/>Session_scope :: "+pageContext.SESSION_SCOPE);
	%>
	
</body>
</html>