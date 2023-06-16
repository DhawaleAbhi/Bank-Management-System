<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../dbconnection.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Locale" %>


<%
   
String toano=request.getParameter("toano");
String amount=request.getParameter("amount");
String password=request.getParameter("password");
String ano=session.getAttribute("ano").toString();
int abal = Integer.parseInt(request.getParameter("amount"));
     // check balance is low or not
	  PreparedStatement p = con.prepareStatement("select balance from bankaccount where ano=?");
     p.setString(1,session.getAttribute("ano").toString());
	 ResultSet r = p.executeQuery();
   
	//check valid account no		
     PreparedStatement pss = con.prepareStatement("select ano from bankaccount where ano=?");
     pss.setString(1,request.getParameter("toano"));
	 ResultSet rss = pss.executeQuery();
	
  if(toano.equals(ano))
	{
	 out.println("<script type=\"text/javascript\">");
     out.println("alert('invalid customer account number transfer');");
     out.println("location='transferform.jsp';");
     out.println("</script>");  	
	}
	else
	{
while (rss.next())
{
	
if(rss.getString(1).equals(toano))  
{

    PreparedStatement ps = con.prepareStatement("select * from bankaccount where ano=? and apin=?");
    ps.setString(1,session.getAttribute("ano").toString());
	ps.setString(2,request.getParameter("password"));
	ResultSet rs = ps.executeQuery();
	
	
   while (rs.next()) 
   {	   			
     if (rs.getString(1).equals(ano) && rs.getString(2).equals(password))
     {
	     while(r.next())
         { 
	      int bbal=r.getInt(1)-abal;
		 if(bbal > 500)
	     {
      String sql="update bankaccount set balance = balance - ? where ano = ?"; 
      PreparedStatement stmt = con.prepareStatement(sql);
      stmt.setString(1,request.getParameter("amount"));
      stmt.setString(2,session.getAttribute("ano").toString());
      stmt.executeUpdate();

      String sqls="update bankaccount set balance = balance + ? where ano = ?"; 
      PreparedStatement stmts = con.prepareStatement(sqls);
      stmts.setString(1,request.getParameter("amount"));
      stmts.setString(2,request.getParameter("toano"));
      stmts.executeUpdate();
      
	  
	  Date date = new Date();  
     SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yy HH:mm:ss a Z");  
     String strDate = formatter.format(date);  
        
   
	 
      Statement st = con.createStatement();
	  st.executeUpdate("insert into transfer(tdate, tamt, tr_toano, tr_ano) values ('"+ strDate +"','" + amount + "','" + toano + "','" + ano + "')");
       
      out.println("<script type=\"text/javascript\">");
      out.println("alert('transfer successfully');");
      out.println("location='transferform.jsp';");
      out.println("</script>"); 
		 }
	     }
		  out.println("<script type=\"text/javascript\">");
          out.println("alert('low account balance to transfer');");
          out.println("location='transferform.jsp';");
          out.println("</script>");
	    
	   
	 }
     }
     out.println("<script type=\"text/javascript\">");
     out.println("alert('invalid  password');");
	 out.println("location='transferform.jsp';");
     out.println("</script>");
}
}
out.println("<script type=\"text/javascript\">");
  out.println("alert('invalid customer account number transfer');");
  out.println("location='transferform.jsp';");
  out.println("</script>");  
	}  
   


%>