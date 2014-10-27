<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Loop</title>
</head>
<body>

	<%
		int i,j=0;
		for(i=0;i<2;i++) {
			out.print("j= "+j);
			j=j+i; 
			out.print(" i= "+i+"<br/>");
		
		}
	%>
	
	<%out.print("Addition is (i+j) :: "+j); %>
</body>
</html>