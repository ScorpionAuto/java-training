<%@page import="java.sql.*"%>
<%
String name = request.getParameter("name").toString();
String data="";
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/";
String dbName = "test";
String driver = "com.mysql.jdbc.Driver";
String userName = "root"; 
String password = "root";

int sumcount=0; 
Statement st;
try {
Class.forName(driver).newInstance();

conn = DriverManager.getConnection(url+dbName,userName,password);
String query = "select * from employee where name='"+name+"'";

st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next())
{
data = ":" + rs.getString("address") +":"+  rs.getString("email");
}
out.println(data);
}
catch (Exception e) {
e.printStackTrace();
}
%>