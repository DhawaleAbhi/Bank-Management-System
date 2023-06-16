<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <html> 
 <head> 
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title> 
 </head> 
 <body> 
 <% 
 String username=request.getParameter("username");
 String password=request.getParameter("password"); 
 if((username.equals("sachin") && password.equals("rode"))) 
 {
	    session.setAttribute("username",username); 
	   out.println("<script type=\"text/javascript\">");
       out.println("alert('login successful');");
	    //response.sendRedirect("dashboard.jsp");
		out.println("location='dashboard/dashboard.jsp';");
       out.println("</script>");
  
	  
	
} 
else 
	 out.println("<script type=\"text/javascript\">");
       out.println("alert('invalid username and  password');");
	    out.println("location='adminloginform.jsp';");
       out.println("</script>");
	
	
%> 
</body> 
</html>

