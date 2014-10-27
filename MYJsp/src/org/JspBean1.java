package org;


public class JspBean1 {


	
	/*Not Working for void return type....because " out " obj returns boolean value in jsp.... 
	 
	 public void display()
	{
		System.out.println("HI");
	}*/

	public String show()
	{
			return "HI";
	}
}
