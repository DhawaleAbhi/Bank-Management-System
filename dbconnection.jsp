<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>

<%
try 
{
	  
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankdb",
            "root", "admin");
}
 catch(SQLException e) 
  {
    out.println("database not connected: " +e);
  }
%>