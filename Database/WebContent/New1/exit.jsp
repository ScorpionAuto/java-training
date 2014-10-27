<%
session.setAttribute("n", null);
session.setAttribute("s",null);
session.invalidate();
response.sendRedirect("form.html");
%>