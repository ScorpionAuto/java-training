Value is ${sessionScope.user}
<%
	session.setAttribute("user", null);
	session.invalidate();
%>