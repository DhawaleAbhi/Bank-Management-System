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
<td>Withdeaw Id</td>
<td>Date</td>
<td>Amount</td>
<td>Your Acc No</td>
</tr>

<%

Statement st= con.createStatement();
String ano=session.getAttribute("ano").toString();  
ResultSet rs=st.executeQuery("select * from withdraw where wano='"+ano+"'");

while(rs.next())
{
 
%>
<tr>
<td><%= rs.getString("wid") %></td>
<td><%= rs.getString("wdate") %></td>
<td><%= rs.getString("wamt") %></td>
<td><%= rs.getString("wano") %></td>

</tr>

<%
}
%>
</table>
 </body>  
</html>  

