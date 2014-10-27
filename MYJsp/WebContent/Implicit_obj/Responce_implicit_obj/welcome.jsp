<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id1=request.getParameter("id");
		String pw1=request.getParameter("pw");
	%>
	<%
		if(id1.equals("admin") && pw1.equals("admin"))
			response.sendRedirect("successful.jsp");
		else
			response.sendRedirect("unsuccessful.jsp");
		//response.sendRedirect("http://www.google.com");
		//response.getBufferSize();
	%>
</body>
</html>