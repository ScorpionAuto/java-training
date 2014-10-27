<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
	
	<%
		String str=request.getParameter("nm");
		out.print("Welcome :: "+str);
		
		pageContext.setAttribute("nm1", str, PageContext.SESSION_SCOPE);
		out.print("<br/>Session_scope :: "+pageContext.SESSION_SCOPE);
	%>
	
	<a href="second.jsp">Second jsp page</a>
	
</body>
</html>