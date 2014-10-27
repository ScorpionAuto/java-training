package org;

import javax.servlet.jsp.tagext.TagSupport;

public class DoEndTag extends TagSupport
{ 
	public int doEndTag()
	{
		return EVAL_PAGE;
		//return SKIP_PAGE;
		//return SKIP_BODY;
	} 
}


/*
 	Output with EVAL_PAGE:: 
 	
	 	Jsp page content before the custom tag. 
		Jsp page content after closing tag.
	
	
	Output with SKIP_PAGE
	
		Jsp page content before the custom tag.
		
		
	Output with SKIP_BODY
	
		Jsp page content before the custom tag. 
		Jsp page content after closing tag.
 */