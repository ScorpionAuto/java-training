<html>
<body>
<% out.print("Today is:"+java.util.Calendar.getInstance().getTime());%>

<br/>parameter name is: <%= request.getParameter("name") %>
<br/>Second parameter name is :: <%= request.getParameter("hi") %>

</body>
</html>