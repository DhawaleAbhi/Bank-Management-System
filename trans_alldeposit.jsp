<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../../dbconnection.jsp" %>
<html> 
<head>
<style>
h1
{
	margin-left:500px;
	margin-top-50px;
}

tr:nth-child(even) 
{
  background-color: #f2f2f2;
}
</style>
</head> 

<body>

<table border="1"style="margin-left:0px;background-color:orange;margin-top:0px;">
<tr>
<td>Deposit Id</td>
<td>Date</td>
<td>Amount</td>
<td>Deposit Acc No</td>
</tr>

<%

Statement st= con.createStatement();
 
ResultSet rs=st.executeQuery("select * from deposit ");

while(rs.next())
{
 
%>
<tr>
<td><%= rs.getString("did") %></td>
<td><%= rs.getString("ddate") %></td>
<td><%= rs.getString("damt") %></td>
<td><%= rs.getString("dano") %></td>

</tr>

<%
}
%>
</table>
 </body>  
</html>  

