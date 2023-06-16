<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../dbconnection.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Locale" %>
<%
  String password=request.getParameter("password");
  String amount=request.getParameter("amount");   
  String ano=session.getAttribute("ano").toString();
  int abal = Integer.parseInt(request.getParameter("amount"));
	// check password
	PreparedStatement ps = con.prepareStatement("select * from bankaccount where ano=? and apin=?");
     ps.setString(1,session.getAttribute("ano").toString());
	 ps.setString(2,request.getParameter("password"));
	 ResultSet rs = ps.executeQuery();
	 
	  // check balance is low or not
	  PreparedStatement pss = con.prepareStatement("select balance from bankaccount where ano=?");
     pss.setString(1,session.getAttribute("ano").toString());
	 ResultSet rss = pss.executeQuery();
	       
	  
while (rs.next()) 
{	   
if (rs.getString(1).equals(ano) && rs.getString(2).equals(password))
{
	
  while(rss.next())
  {
	  int bbal=rss.getInt(1)-abal;
	if(bbal > 500)
    {
     String sql="update bankaccount set balance = balance - ? where ano = ?"; 
     PreparedStatement stmt = con.prepareStatement(sql);
     stmt.setString(1,request.getParameter("amount"));
	 stmt.setString(2,session.getAttribute("ano").toString());
     stmt.executeUpdate();

	 Date date = new Date();  
     SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yy HH:mm:ss a Z");  
     String strDate = formatter.format(date);  
      Statement st = con.createStatement();
	  st.executeUpdate("insert into withdraw(wdate, wamt, wano) values ('"+ strDate +"','" + amount + "','" + ano + "')");
	 
        out.println("<script type=\"text/javascript\">");
        out.println("alert('withdraw successfully');");
        out.println("location='withdrawform.jsp';");
        out.println("</script>"); 
	}
   else
   {
    out.println("<script type=\"text/javascript\">");
    out.println("alert('low account balance to withdraw');");
    out.println("location='withdrawform.jsp';");
    out.println("</script>"); 	
   }	
  }

}

else 
{
	
} 

}
out.println("<script type=\"text/javascript\">");
       out.println("alert('invalid  password');");
	    out.println("location='withdrawform.jsp';");
       out.println("</script>");
 


%>