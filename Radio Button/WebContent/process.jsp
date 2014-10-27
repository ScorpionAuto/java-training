<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String str; %>

<%
	str=request.getParameter("gender");
	if(str==null)
   {
	 out.print("Please Select the proper Gender ....!!!!"+" "+"<br/>Go to &nbsp;");
%>
	<a href="test1.jsp">Test1.jsp</a>
	
<% }
	else
		out.print("Selected Gender is :: "+str); %>
</body>
</html>