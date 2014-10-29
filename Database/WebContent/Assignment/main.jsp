<%@page import="java.sql.*,java.util.*"%>
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
<title>Main.jsp</title>
</head>
<body>

<%! Connection con;
	Statement st;
	ResultSet rs,rs1;
	double per;
%>
	



<form action="main.jsp">
<mysql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		     url="jdbc:mysql://localhost:3306/Big_Test"
		     user="root"  password=""/>
		     
Student_name :: 	
		<mysql:query dataSource="${snapshot}" var="result">
		SELECT id,stud_name from student;
		</mysql:query>
		
		
		<select name="stu" id="t">
			<option value="">Select Student</option>
			<c:forEach var="row" items="${result.rows}">
				<option value="<c:out value="${row.stud_name}"/>"> <c:out value="${row.stud_name}"/></option>
			</c:forEach>
		</select><br/>
		
		<br/>
		
Branch_name :: 	
		<mysql:query dataSource="${snapshot}" var="result">
		SELECT br_name from branch;
		</mysql:query>
		
		
		<select name="br_nm">
			<option value="">Select Branch</option>
			<c:forEach var="row" items="${result.rows}">
				<option value="<c:out value="${row.br_name}"/>"> <c:out value="${row.br_name}"/></option>
			</c:forEach>
		</select><br/>
	
	<br/>
	
Subject_name :: 	
		<mysql:query dataSource="${snapshot}" var="result">
		SELECT id,sub_name,out_of from subject;
		</mysql:query>
		
		
		<select name="sub" onchange="swap(this, 'change')" id="sub_db">
			<option value="">Select Subject</option>
			<c:forEach var="row" items="${result.rows}">
				<option scope="<c:out value="${row.out_of}"/>" value="<c:out value="${row.sub_name}"/>"> <c:out value="${row.sub_name}"/></option>
			</c:forEach>
		</select><br/>
	
	<br/>
	Marks :: <input type="text" name="m1" id="m2"> &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="change" size="3" name="val" readonly/>Out_Of<br/><br/>
	
	<input type="submit" value="Insert">
	
</form>

<br/>
<hr><hr>

<%
	
	String stud1=request.getParameter("stu");
	out.print("<br/>Student_Name :: "+stud1);
	
	String br=request.getParameter("br_nm");
 	out.print("<br/>Branch_Name :: "+br);
 	
 	String s=request.getParameter("sub");
 	out.print("<br/>Subject_Name :: "+s);
 	
 	String mrk=request.getParameter("m1");
 	out.print("<br/>marks :: "+mrk);
 	 
 	String q=mrk;
 	
 	
 
 	
 	String o=request.getParameter("val");
 	out.print("<br/>o :: "+o);
 	
 	
 	
 	
 	int m=Integer.parseInt("q");
 	double p=0;
 	
 	
 	if(mrk==null)
 	{
 		
 	}
 	else
 	{
     try{
        
    		 
    	 	
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
          st=con.createStatement();
           
          
          int j=st.executeUpdate("insert into main(br_name,stud_name,sub_name,marks,percentage) values('"+br+"','"+stud1+"','"+s+"','"+m+"','"+p+"')");
          out.print("Data is Successfully inserted...."); 
         /*  int m2=Integer.parseInt("mrk");
          
          int o1=Integer.parseInt("o"); */
          //double per=(m2/o1)*100;
         // out.print("<br/>percentage :: "+per);  
         

		 rs=st.executeQuery("select * from main");

%>
		<table border="1" style="border-collapse: collapse;; width: 100%;" >
            <tr>
                <th>Sr_No</th>
                <th>Branch_name</th>
                <th>Subject_Name</th>
                <th>Student_Name</th>
                <th>Marks</th>
                <th>Per</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getInt(1) %></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getString(3) %></td>
                <td> <%= rs.getString(4) %></td>
                <td> <%= rs.getInt(5) %></td>
                 <td> <%= rs.getDouble(6) %></td>
            </tr>
            <% } %>
        </table>
<%	
				
      }
      catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
      }
 	}
%>

<script type="text/javascript">

		var markss;
		var ret = function(e){ return document.getElementById(e); }
		var swap = function(elem, el){
		  ret(el).value = elem.options[elem.selectedIndex].getAttribute("scope");
		}
</script>

</body>
</html>	
