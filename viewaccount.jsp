<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../dbconnection.jsp" %>
<html> 
<head>
<style>
table
{
	margin-left:300px;
	background-color:orange;
}
h1
{
	margin-left:500px;
	color:orange;
}
tr:nth-child(even) {
  background-color: #f2f2f2;
}

</style>
</head> 
<body>
<%@include file="bankdashboard.jsp" %>
<table>
<h1>Account Detail</h1>
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

Statement st= con.createStatement();
String ano=session.getAttribute("ano").toString();  
ResultSet rs=st.executeQuery("select * from bankaccount where ano='"+ano+"'");

while(rs.next())
{
 
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
%>


</table>
 </body>  
</html>  

