<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../dbconnection.jsp" %>
<%

  
  String an=request.getParameter("ano");
  String ap=request.getParameter("apin"); 
  String fn=request.getParameter("fname"); 
  String mn=request.getParameter("mname"); 
  String ln=request.getParameter("lname"); 
  String add=request.getParameter("address"); 
  String a=request.getParameter("age"); 
   String ph = request.getParameter("phno");
  String bal = request.getParameter("balance");
  int b = Integer.parseInt(request.getParameter("balance"));
  
      PreparedStatement p = con.prepareStatement("select * from bankaccount where phno=?");
      p.setString(1,request.getParameter("phno"));
	 ResultSet r = p.executeQuery();
     
	 PreparedStatement ps = con.prepareStatement("select * from bankaccount where ano=?");
      ps.setString(1,request.getParameter("ano"));
	 ResultSet rs = ps.executeQuery();
	  int i=0;
 while(rs.next()) 
 {	   
   if(rs.getString(1).equals(an))
    {	 
	   out.println("<script type=\"text/javascript\">");
       out.println("alert('account number already here');");
	    out.println("location='addaccountform.jsp';");
       out.println("</script>");
    }
	
 }

 while(r.next()) 
 {	   
   if(r.getString(1).equals(ph))
    {	 
	      
    }
	i++;
 }

if(i==0)
{
	Statement st = con.createStatement();
     st.executeUpdate("insert into bankaccount(ano, apin, fname, mname, lname, address, age, phno, balance) values ('" + an + "','" + ap + "','" + fn + "','" + mn + "','" + ln + "','" + add + "','" + a + "','" + ph + "','" + bal + "')");
     out.println("<script type=\"text/javascript\">");
     out.println("alert('Account open successfully');");
	 out.println("location='addaccountform.jsp';");
     out.println("</script>");
}
else
{
	out.println("<script type=\"text/javascript\">");
       out.println("alert('mobile number already here');");
	    out.println("location='addaccountform.jsp';");
       out.println("</script>");
}


%>