<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="mysql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String nm; %>

<select name="name">
 <% 
 try{
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test","root","");
 Statement st=con.createStatement();
 String sql="select br_name from branch";
 ResultSet rs=st.executeQuery(sql);
 while(rs.next()){
 	 nm = rs.getString("br_name");
   }    %>    <option value="<%=rs.getString("br_name")%>"></option>

   <%
  }catch(Exception e){
  }     
 %>
 </select>
 
 <%= "Result :: "+nm %>
</body>
</html>