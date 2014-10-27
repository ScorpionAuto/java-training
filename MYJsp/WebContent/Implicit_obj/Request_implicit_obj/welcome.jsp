<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%  String nm=request.getParameter("name");
		String snm=request.getParameter("surname");
		out.print("Name :: "+nm);
		out.print("<br/> Surname :: "+snm);
		
		out.print("<br/> request.getContentType :: "+request.getContentType());
		out.print("<br/> request.getHeaderNames :: "+request.getHeaderNames());
		out.print("<br/> request.getContextPath :: "+request.getContextPath());
		out.print("<br/> request.getLocalAddr :: "+request.getLocalAddr());
	%>
	
	<% request.setAttribute("my", "welcome.jsp");
	 /* response.sendRedirect("get.jsp"); */ %>
</body>
</html>