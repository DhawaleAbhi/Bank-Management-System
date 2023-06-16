<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title> 
 </head> 
 <body>
 <% 
 session.removeAttribute("username"); 
 session.removeAttribute("password"); 
 session.invalidate(); 

 out.println("<script type=\"text/javascript\">");
       out.println("alert('logout successfully:');");
	    out.println("location='../index.jsp';");
       out.println("</script>");
 //<h1>Logout was done successfully.</h1>
  %>
 </body>
 </html>