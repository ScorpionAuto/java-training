package org;

import java.io.PrintWriter;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;


public class Calender extends TagSupport{

	public int doStartTag(){
		
		JspWriter out=pageContext.getOut();
		
		try{
			out.print(java.util.Calendar.getInstance().getTime());
		}
		catch(Exception e){}
		
		return SKIP_BODY;
	} 
}
