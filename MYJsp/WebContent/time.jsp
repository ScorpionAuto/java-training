<%@page import="org.Calender"%>
<%@ taglib uri="WEB-INF/t.tld" prefix="m"  %>
<%@ page import="java.util.*,java.io.*" %>
<html>
<body>
<%
	response.setIntHeader("Refresh", 1);
%>
<%
	Calendar c = new GregorianCalendar();
	String am_pm;
	
	int hour=c.get(Calendar.HOUR);
	int min=c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
	 
	 if(c.get( Calendar.AM_PM)==0)
		 am_pm="AM";
	 else
		 am_pm="PM";
	 
	 String CT = hour+":"+ min +":"+ second +" "+ am_pm;
	  out.println("Without Tablib ...<br/> <t/> Current Time ::" + CT + "");
%>
<%="<br/><br/><br/> Using Tablib <br/>Current Time ::" %>
<m:time/>
</body>
</html>