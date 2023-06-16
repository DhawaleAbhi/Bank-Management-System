<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@include file="../../../dbconnection.jsp" %>
<html> 
<head>
<style>
h2
{
	margin-left:500px;
	font-size:30px;
}

tr:nth-child(even) 
{
  background-color: #f2f2f2;
}
table tr td
{
	
	font-size:20px;
}



</style>
</head> 
<body>



<table>

<table border="1"style="margin-left:0px;background-color:orange;margin-top:0px;">
<tr>
<td>Trans Id</td>
<td>Date</td>
<td>Amount</td>
<td>Acc No</td>
<td>TO Acc No</td>
</tr>

<%

Statement st= con.createStatement();
  
ResultSet rs=st.executeQuery("select * from transfer");

while(rs.next())
{
 
%>
<tr>
<td><%= rs.getString("tid") %></td>
<td><%= rs.getString("tdate") %></td>
<td><%= rs.getString("tamt") %></td>
<td><%= rs.getString("tr_ano") %></td>
<td><%= rs.getString("tr_toano") %></td>
</tr>

<%
}
%>
</table>
 </body>  
</html>  

