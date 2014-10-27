<%-- <%   
out.print("Welcome "+request.getParameter("uname")+"<br/>");  
  
String driver=config.getInitParameter("dname");  
out.print("driver name is="+driver);  
%>  

This is for application context

<% 
out.print("<br/>Welcome "+request.getParameter("uname")+"<br/>");  

String driver1=application.getInitParameter("dname");  
out.print("driver name is="+driver);  
%> --%>