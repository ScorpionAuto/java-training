package org;
import java.sql.*;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
 
public class UsersHandler extends SimpleTagSupport {
 
    /**
     * Called by the container to invoke this tag. 
     * The implementation of this method is provided by the tag library developer,
     * and handles all tag processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
         
        try {
            // connect to database
        	Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Big_Test", "root", "");
          //create your own database handler
            PreparedStatement ps = con.prepareStatement("select id, br_name from users order by branch");
            ResultSet rs = ps.executeQuery();
            String output = "<select name=id>";
 
            while (rs.next()) {
                output += "<option value=" + rs.getString("id") + ">" + rs.getString("br_name") + "</option>";
            }
            output += "</select>";
            out.println(output);
 
        } catch (Exception ex) {
            throw new JspException("Error in UsersHandler tag", ex);
        }
    }
}
