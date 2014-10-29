<table border="1" style="border-collapse: collapse;; width: 100%;" >
            <tr>
                <th>Sr_No</th>
                <th>Branch_name</th>
                <th>Student_Name</th>
                <th>Subject_Name</th>
                <th>Marks</th>
                <th>Percentage</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getInt(1) %></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getString(3) %></td>
                <td> <%= rs.getString(4) %></td>
                <td> <%= rs.getInt(5) %></td>
                <td> <%= rs.getDouble(6) %></td>
            </tr>
            <% } %>
        </table>