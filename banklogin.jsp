<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../dbconnection.jsp" %>
<%
String ano=request.getParameter("ano");
//session.putValue("username",username);
String apin=request.getParameter("apin");

Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from bankaccount where ano='"+ano+"' and apin='"+apin+"'");

if(rs.next())
{
if((rs.getString("ano").equals(ano) && rs.getString("apin").equals(apin)))

	    session.setAttribute("ano",ano);		
       out.println("<script type=\"text/javascript\">");
       out.println("alert('login successful');");
	   //response.sendRedirect("../index.jsp");
		out.println("location='bank/bankdashboard.jsp';");
       out.println("</script>");


	   
}
else
{
	out.println("<script type=\"text/javascript\">");
       out.println("alert('invalid username and password');");
	   //response.sendRedirect("../index.jsp");
		out.println("location='bankloginform.jsp';");
       out.println("</script>");
}

%>