<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index.jsp</title>
</head>
<body>

<link href="style.css" rel="stylesheet" type="text/css"/>

<%! Connection con;
	Statement st;
	ResultSet rs,rs1;
	double per;
%>
	

<form action="marks.jsp" method="post">
	<span style=' float: left;padding-top: 10px;padding-left: 40px;padding-bottom: 0;font-size: 20px;clear: both;'>Marks</span>
			<input type='submit' value='Add/Insert' style=' background-color: #9DC45F;color: white;width: 99px;height: 40px;font-weight: bold;font-size: medium;border-radius: 12px;float: right;'>;
	<br/><br/>
</form>		     
<br/>
<hr>
<center><h3> Marks Details Table</h3></center>
<%
	
     try{
        
    		 
    	 	
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
          st=con.createStatement();
           
		  rs=st.executeQuery("SELECT marks.id as sr_no, student.name as student_name, branch.name as branch_name, subject.name as subject_name, marks, TRUNCATE(((marks.marks/subject.out_of)*100),2) as percentage FROM `marks` left join student on (student.id = marks.student_id) left join branch on (branch.id = student.branch_id) left join subject on (subject.id = marks.subject_id)");

%>
		<table class="my" border="1" style="border-collapse: collapse;; width: 100%;" >
            <tr>
                <th>Sr</th>
                <th>Student</th>
                <th>Branch</th>
                <th>Subject</th>
                <th>Marks</th>
                <th>Percentage</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getInt(1) %></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getString(3) %></td>
                <td> <%= rs.getString(4) %></td>
                <td> <%= rs.getInt(5) %></td>
                <td><%=rs.getDouble(6) %>
            </tr>
            <% } %>
        </table>
<%	
				
      }
      catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
      }
 	
%>


</body>
</html>	
