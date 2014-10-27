<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! String[] str;
		int i;%>
	<% 
	   str=request.getParameterValues("chk");
		
		if(str==null)
		{
			out.print("You haven't select a value...!!!!"+" "+"Please Select it <br/>");
	%>
		<a href="test1.jsp">Test1.Jsp</a>
	<% 
		}
		else {
			for(i=0;i<str.length;i++)
		   		out.print( "<br/>Selected Check Boxes is :: "+str[i]);
			
			out.print("<br/><br/>Thank you......");
		}	
	 %>
	 
</body>
</html>