<HTML>
<HEAD>
<TITLE>Submitting Text Fields</TITLE>
</HEAD>

<BODY>
<H1>Submitting Text Fields</H1>
<FORM ACTION="b.jsp" METHOD="POST">
Please enter your name:
<INPUT TYPE="TEXT" NAME="text1">
<BR>
<INPUT TYPE="SUBMIT" value="Submit">
<%
String s=request.getParameter("text1");
out.println(request.getParameter("text1")); 
out.println("<br/>s :: "+s); %>
</FORM>
</BODY>
<HTML>