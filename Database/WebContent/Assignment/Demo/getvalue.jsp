<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Get Combo Box Value</title>
</head>
<body>

<%
	String selectedValue=request.getParameter("br_nm");
	out.println("Selected Value is: "+selectedValue);
%>
</body>
</html>