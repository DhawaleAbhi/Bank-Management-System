<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../dbconnection.jsp" %>
<html> 
<head>
<script>
function checkNumber(event)
{
if((event.charCode >= 48 && event.charCode <=57))

   {
   return true;
   }
   else
   {
    alert("enter only digit");
    return false;
   }
}
</script>
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
#i1
{
	margin-left:30px;
}
.a5
{
	margin-left:450px;
	margin-top:70px;
}
#i5
{
	margin-left:130px;
	background-color:green;
	color:white;
	height:30px;
	width:150px;
	border-radius:10px;
}
</style>
</head> 
<body>
<%@include file="dashboard.jsp" %>
<h1>Account Detail</h1>

<div class="a5">
<form action="searchaccount.jsp" method="post"> <br>
 <b>ACCOUNT No:</b><input type="text" id="i1" name="ano" placeholder="Acc NO" required onkeypress="return checkNumber(event)"> <br><br><br>
 <input type="submit" id="i5" value="search">
 </form>
</div>
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

Statement st= con.createStatement();  
ResultSet rs=st.executeQuery("select * from bankaccount");

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

