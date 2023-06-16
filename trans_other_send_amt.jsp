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
<td>Trans Id</td>
<td>Date</td>
<td>Amount</td>
<td>Your Acc No</td>
<td>Other Acc No</td>
</tr>

<%

Statement st= con.createStatement();
String ano=session.getAttribute("ano").toString();  
ResultSet rs=st.executeQuery("select * from transfer where tr_toano='"+ano+"'");

while(rs.next())
{
 
%>
<tr>
<td><%= rs.getString("tid") %></td>
<td><%= rs.getString("tdate") %></td>
<td><%= rs.getString("tamt") %></td>
<td><%= rs.getString("tr_toano") %></td>
<td><%= rs.getString("tr_ano") %></td>
</tr>

<%
}
%>
</table>
 </body>  
</html>  

