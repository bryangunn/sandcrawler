<%-- 
    Document   : index
    Created on : Jul 19, 2017, 2:37:59 PM
    Author     : bgunn
--%>

<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="carcss.css">
        <title>Car Part Entry Page</title>
    </head>
    <body>
        <h1>Inventory Control System</h1>
        <br>
        <!--
        <%
            InitialContext initialContext = new InitialContext();
            Context context = (Context) initialContext.lookup("java:comp/env");
            //The JDBC Data source that we just created
            DataSource ds = (DataSource) context.lookup("carpool");
            Connection connection = ds.getConnection();

            if (connection == null)
            {
                throw new SQLException("Error establishing connection!");
            }
            String query = "SELECT distinct make FROM identity";

            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();

            while (rs.next())
            {
                out.print(rs.getString("make") + "<br>");
            }
        %>
        -->
        <br>
          <table class="fixed" border="1" cellspacing="1" cellpadding="1">
              <col width="40px" />
              <col width="40px" />
              <col width="40px" />
              <col width="40px" />
            <thead>
                <tr>
                    <th>Make</th>
                    <th>Model</th>
                    <th>Version</th>
                    <th>Range</th>
                </tr>
            </thead>
            <tbody>

                <tr>
                    <td>
                        <form action="setModel.jsp">
                            <select name="make" onchange="this.form.submit()">
                                <option>Select</option>
                                <%
            String query2 = "SELECT make FROM makes";

            PreparedStatement statement2 = connection.prepareStatement(query2);
            ResultSet rs2 = statement2.executeQuery();

            while (rs2.next())
            {
                out.print("<option>");
                out.print(rs2.getString("make") + "</option>");
            }
                                %>
                            
                            </select>
                        </form>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

            </tbody>
        </table>      
        
                                
                                
                                
    </body>
</html>
