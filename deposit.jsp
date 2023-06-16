<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../dbconnection.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Locale" %>
<%

  String amount=request.getParameter("amount");  
  String ano=request.getParameter("ano"); 
	int abal = Integer.parseInt(request.getParameter("amount"));
	  PreparedStatement p = con.prepareStatement("select balance from bankaccount where ano=?");
     p.setString(1,request.getParameter("ano"));
	 ResultSet r = p.executeQuery();	
	 
	PreparedStatement ps = con.prepareStatement("select * from bankaccount where ano=?");
      ps.setString(1,request.getParameter("ano"));
	 ResultSet rs = ps.executeQuery();
	  
while (rs.next()) 
 {	   
  if (rs.getString(1).equals(ano))
   {
	  while(r.next())
       { 
	      int bbal=r.getInt(1)+abal;
	      if(bbal < 1000000)
	     {
	 
           String sql="update bankaccount set balance = balance + ? where ano = ?"; 
           PreparedStatement stmt = con.prepareStatement(sql);
           stmt.setString(1,request.getParameter("amount"));
           stmt.setString(2,request.getParameter("ano"));
	       stmt.executeUpdate();

		   Date date = new Date();  
     SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yy HH:mm:ss a Z");  
     String strDate = formatter.format(date);  
      Statement st = con.createStatement();
	  st.executeUpdate("insert into deposit(ddate, damt, dano) values ('"+ strDate +"','" + amount + "','" + ano + "')");
		   
           out.println("<script type=\"text/javascript\">");
           out.println("alert('deposit amount successfully');");
           out.println("location='depositform.jsp';");
           out.println("</script>"); 
	     }
	   }
 
       out.println("<script type=\"text/javascript\">");
       out.println("alert('deposit failed because Acc limit is(10 lakh)');");
       out.println("location='depositform.jsp';");
       out.println("</script>");  
   }
 }
    out.println("<script type=\"text/javascript\">");
    out.println("alert('invalid account number to deposit');");
	out.println("location='depositform.jsp';");
    out.println("</script>");
 


%>