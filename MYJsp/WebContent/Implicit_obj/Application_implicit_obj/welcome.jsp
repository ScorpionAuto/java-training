<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<%   
			out.print("Welcome "+request.getParameter("uname"));  
			  
			String driver=config.getInitParameter("dname");  
			out.print("<br/>driver name is="+driver);  
			
			String nm=request.getServerName();
			out.print("<br/>Servlet Name " +nm);
	%>  
</body>
</html>