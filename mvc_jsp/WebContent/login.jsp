<%
if(request.getAttribute("error")!=null){
out.print("Not valid user! Try again<hr>");
}
 %>

<form action="servletM">
Name:<input type="text" name="name"/><br/>
Password:<input type="password" name="pass"/><br/>

<input type="submit" value="login"/>


</form>