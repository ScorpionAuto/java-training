<html>
<body>
<h2>this is index page</h2>

<jsp:forward page="b.jsp">
	<jsp:param value="hello" name="t0"/>
	<jsp:param value="timepass" name="t1"/>
</jsp:forward>

<jsp:forward page="a.jsp" >
	<jsp:param value="javatpoint.com" name="name" />
	<jsp:param value="wow" name="hi"/>
</jsp:forward>


</body>
</html>