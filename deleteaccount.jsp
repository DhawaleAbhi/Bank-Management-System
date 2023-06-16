<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../dbconnection.jsp" %>
<%
 
  
	 String ano=request.getParameter("ano");  
	PreparedStatement ps = con.prepareStatement("select * from bankaccount where ano=?");
      ps.setString(1,request.getParameter("ano"));
	 ResultSet rs = ps.executeQuery();
	  
while (rs.next()) 
{	   
 if (rs.getString(1).equals(ano))
{
  

String sql="delete from bankaccount where ano=?"; 
 PreparedStatement stmt = con.prepareStatement(sql);
     stmt.setString(1,request.getParameter("ano"));
	stmt.executeUpdate();




   out.println("<script type=\"text/javascript\">");
      out.println("alert('account delete successfully');");
   out.println("location='deleteaccountform.jsp';");
       out.println("</script>"); 
 
}
else 
{
	
} 

}
out.println("<script type=\"text/javascript\">");
       out.println("alert('invalid account number');");
	    out.println("location='deleteaccountform.jsp';");
       out.println("</script>");
 


%>