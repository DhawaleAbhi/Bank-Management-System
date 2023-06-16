<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html> 
<head>
<style>
body
{
	background-color:#2F4F4F;
}
.a1
{
	height:30%;
	width:100%;
	background-color:white;
	margin-left:0%;
}
.a2
{
    height:8%;
	width:100%;
	overflow: hidden;
    background-color: #4169E1;
	border:1px solid black;
}

.a2 a:hover
{
background-color:#BC8F8F;
  color: black;
}

.a2 a
{
float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
 margin-left:0px;
 border-radius:5px;
}

a.active
{
 background-color: #4CAF50;
  color: white;
}

.a3
{
	height:2%;
	width:100%;
	background-color:#4169E1;
	
}

.a1 img {
  border: 1px solid #ddd;
  border-radius: 80px;
  padding: 5px;
  width: 120px;
  height:120px;
 margin-left:30px;
 margin-top:20px;
 border:1px solid white;
}
.a1 h1
{
	margin-left:950px;
	margin-top: 0px;
	color: #4169E1;
}
.a1 h3
{
	margin-left:1000px;
	margin-top: -8px;
	color:#4169E1 ;
}
.a4
{
	height:58%;
	width:99%;
	background-color:#FFF0F5;
	margin-left:10px;
}
.a4 img
{
width: 100%;
  height:130%;	
}
h2
{
	margin-top:-140px;
	color:orange;
}
</style>
</head> 
<body>

<div class="a3">

</div>

<div class="a1">
<img src="banklogo.jpg" alt="worldbank">
<center>
<h2> 
 <%
 String a=session.getAttribute("ano").toString(); 
 out.println("ACCOUNT NO: "+a); 
 %>
 </h2>
 </center>
<h1>INDIA BANK</h1>
<h3>Bank For All</h3>
</div>
<div class="a2">
<a class="active" href="../../index.jsp">Home</a>
  <a href="transferform.jsp">Transfer Money</a>
  <a href="withdrawform.jsp">Withdraw Money</a>
  <a href="viewaccount.jsp">View Account</a>
  <a href="viewtransaction.jsp">View Transaction</a>
  <a href="banklogout.jsp">Logout</a>
 </div>
 </body>  
</html>  