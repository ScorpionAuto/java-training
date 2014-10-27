<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="bari" uri="/WEB-INF/lib/bari.tld"%>
<!DOCTYPE html>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="dispuser.jsp">
            Select User: <bari:user /><br></br>
            <input type=submit value="Show selected user"/>
        </form>
    </body>
</html>