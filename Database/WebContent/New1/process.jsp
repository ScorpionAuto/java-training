<%
	String nm=request.getParameter("fname");
	String s=request.getParameter("sal");
	
	session.setAttribute("n", nm);
	session.setAttribute("s", s);
%>

<%
    if ((session.getAttribute("n") == null) || (session.getAttribute("s") == "")) {
%>
Please enter the given details<br/>
<a href="form.html">Form</a>
<%} else {
%>

<%
    response.sendRedirect("insert.jsp");
    }
%>