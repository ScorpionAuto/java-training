package org;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class InsertDB extends TagSupport{

	public int doStartTag() throws JspException {
		
		return SKIP_BODY;
		
	}
}
