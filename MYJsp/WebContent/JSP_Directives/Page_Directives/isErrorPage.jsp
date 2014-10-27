<html>
<body>
	<%@page isErrorPage="true" %>
	Sorry Exception occures.<br/>
	Exception is <%= exception %>	
	
<%--	This will give an error ....because value is false.... 
  	
		<%@page isErrorPage="false" %>
	  	Exception is <%= exceptiom %>   
--%>

</body>
</html>