<%@page import="java.sql.*"%>
    <html>
    <head>

    </head>
    <body>
    <form id="frm1" name="frm_addUser" method="post" action="./index.jsp">
    Select Programming Language:
    <select name="br_nm" id="t">
    <option value="select">select language</option>
    <option value="C/C++">C/C++</option>
    <option value="C#">C#</option>
    <option value="Java">Java</option>
    <option value="Perl">Perl</option>
    <option value="Python">Python</option>
    </select><br>

    <input type="submit" value="Submit" ><br>
    </form>

    <%!
    String tlen="";
    String languages="";%>
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test","root","");
            Statement st=con.createStatement();
        int j=0;
        String lang[]=request.getParameterValues("lang");



        for(int i=0; i<lang.length; i++)
        {
            //languages+=lang[i]+", ";
            j=st.executeUpdate("insert into branch(br_name) values('"+lang[i]+"')");
        }



            out.println("Data is successfully inserted into database.");
    }
    catch(Exception e)
    {
        //out.println(e);
        //e.printStackTrace();
    }

            %>


    </body>
    </html>