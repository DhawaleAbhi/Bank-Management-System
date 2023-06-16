<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../dbconnection.jsp" %>
<html> 
<head>
<style>
table
{
	margin-left:200px;
	background-color:orange;
	font-size:20px;
}
h1
{
	margin-left:500px;
	color:orange;
}
tr:nth-child(even) {
  background-color: #f2f2f2;
}
table  a
{
	color:white;
    text-decoration: none;
	background-color:green;
	 font-size: 25px;
	 border-radius:10px;
}

</style>
</head> 
<body>
<%@include file="dashboard.jsp" %>
<h1>Account Detail</h1>
<table>
<br><br>
<table border="1">
<tr>
<td>Account No</td>
<td>password</td>
<td>First Name</td>
<td>Middle Name</td>
<td>Last Name</td>
<td>Address</td>
<td>Age</td>
<td>Phone No</td>
<td>Account Balance</td>

</tr>
<%
      int i=0;
	 
      PreparedStatement ps = con.prepareStatement("select * from bankaccount where ano=?");
      ps.setString(1,request.getParameter("ano"));
	 ResultSet rs = ps.executeQuery();
while(rs.next())
{
  i++;
%>
<tr>
<td><%= rs.getString("ano") %></td>
<td><%= rs.getString("apin") %></td>
<td><%= rs.getString("fname") %></td>
<td><%= rs.getString("mname") %></td>
<td><%= rs.getString("lname") %></td>
<td><%= rs.getString("address") %></td>
<td><%= rs.getString("age") %></td>
<td><%= rs.getString("phno") %></td>
<td><%= rs.getString("balance") %></td>

</tr>    
<%
}
if(i==0)
{
	out.println("<script type=\"text/javascript\">");
       out.println("alert('invalid account number');");
	    out.println("location='showallaccountform.jsp';");
       out.println("</script>");
}
else
{
	
}	
	
%>


</table>
 </body>  
</html>  

