<%@page import="java.util.Timer"%>
<%@page contentType="text/html" %>
<%@ page import="java.util.Timer"%>

<html>
	<body>
    	<table>
         	<tr><td><strong>This is the contentType Attribute page.</strong></td></tr>
        </table>
                
      	<%= "<br/>Today is "+ new java.util.Date() %>                
        <%= "<br/>Import Timer :: " + new Timer() %>
    </body>
</html>