<%@ page import="org.Jsp_Bean" %>
<%@page import="java.util.*,java.io.*" %>
<html>
<body>
<jsp:useBean id="obj" class="org.Jsp_Bean"/>
<jsp:useBean id="obj1" class="org.JspBean1"/>
	<%
		int res=obj.add();
		out.print("Addition is :: "+res);
		
		
		out.print("<br/>   "+obj1.show()); 
		String s=obj1.show();
		out.println("<br/><br/>"+s);
		
		
		
		/*  Not Working for void return type....because out obj returns boolean value in jsp.... 
		
		System.out.println(obj1.display());
		out.print(obj1.display()); */
				
	%>
</body>
</html>