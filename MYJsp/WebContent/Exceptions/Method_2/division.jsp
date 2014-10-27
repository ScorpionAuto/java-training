<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<%@ page errorPage="web.xml" %>
	
	<%
		String i=request.getParameter("n1");
		String j=request.getParameter("n2");
		
		int a=Integer.parseInt(i);
		int b=Integer.parseInt(j);
		
		double res=a/b;
		
		out.print("Division is ::"+res);
	
	%>
	
</body>
</html>