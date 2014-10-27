import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MServlet extends HttpServlet {

public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
		
	String n=request.getParameter("name");
	String p=request.getParameter("pass");
		
	if(n==null){
		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
	else if(n.equals("admin") && p.equals("admin") ){
		RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
		rd.forward(request, response);
	}
	else{
		request.setAttribute("error","true");
		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);

	}
	
	
	out.close();
	}

}
