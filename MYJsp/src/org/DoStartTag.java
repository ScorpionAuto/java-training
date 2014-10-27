package org;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class DoStartTag extends TagSupport{
	
	public int doStartTag() throws JspException
	{
		//return SKIP_PAGE;
		return EVAL_BODY_INCLUDE;
		//return SKIP_BODY;
	} 

}


/*
 	Output ::  with SKIP_PAGE / with EVAL_BODY_INCLUDE
 	
 		
		Jsp page content before starting tag. 
		contents displayed after the custom tag's start tag is encountered. 
		Jsp page content after closing tag.
	
	
 	Output ::  with SKIP_BODY
 	
 		Jsp page content before starting tag.  
		Jsp page content after closing tag.
*/