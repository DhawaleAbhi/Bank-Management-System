<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.text.SimpleDateFormat"%>
<html> 
<head>
<style>
h1
{
	margin-left:500px;
	font-size:30px;
	color:orange;
}

tr:nth-child(even) 
{
  background-color: #f2f2f2;
}
table tr td
{
	
	font-size:25px;
}
h2
{
	margin-left:40px;
}
h3
{
	margin-left:570px;
	margin-top:-40px;
	font-size:25px;
	color:orange;
}
h4
{
	margin-left:1000px;
	margin-top:-47px;
	font-size:25px;
	color:orange;
}



</style>
</head> 
<body>
<%@include file="dashboard.jsp" %>
<%@include file="../../dbconnection.jsp" %>


  <h1>All Transactions</h1><br><br><br><br><br><br><br><br><br>
<h2>All Transfer Detail</h2>
<h3>All Deposit Detail</h3>
<h4>All Withdraw Detail</h4>
<br>
<iframe src="transaction\trans_alltransfer.jsp" height="300" width="480" style="margin-left:0px;margin-top:0px;">
</iframe>

<iframe src="transaction\trans_alldeposit.jsp" height="300" width="360" style="margin-left:50px;margin-top:-310px;">
</iframe>

<iframe src="transaction\trans_allwithdraw.jsp" height="300" width="360" style="margin-left:50px;margin-top:-320px;">
</iframe>

 </body>  
</html>  

