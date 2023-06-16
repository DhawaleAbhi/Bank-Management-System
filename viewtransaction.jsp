<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../dbconnection.jsp" %>
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

h2
{
	margin-left:40px;
}
h3
{
	margin-left:500px;
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
<%@include file="bankdashboard.jsp" %>
<h1>Transaction Detail</h1><br><br><br><br><br><br><br><br><br>
<h2>You Send money to other</h2>
<h3>Other Send money to you</h3>
<h4>Withdraw Detail</h4>
<br>
<iframe src="transaction\trans_you_send_amt.jsp" height="300" width="400" style="margin-left:0px;margin-top:10px;">
</iframe>

<iframe src="transaction\trans_other_send_amt.jsp" height="300" width="400" style="margin-left:50px;margin-top:-310px;">
</iframe>

<iframe src="transaction\trans_withdraw_amt.jsp" height="300" width="400" style="margin-left:50px;margin-top:-320px;">
</iframe>
 </body>  
</html>  

