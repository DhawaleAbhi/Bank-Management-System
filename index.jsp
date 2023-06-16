<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>  
<head>

<style>
.a1
{
	height:5%;
	width:100%;
	background-color:#FF4500;
	margin-left:0%;
}
.a2
{
    height:8%;
	width:100%;
	background-color:#FFF0F5;
	
	overflow: hidden;
    background-color: #2F4F4F;
}
.a2 a
{
float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.a2 a:hover
{
background-color: white;
  color: black;
}


a.active
{
 background-color: #4CAF50;
  color: white;
}

</style>
</head>



<body>
<div class="a1">
<a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
</div>
<div class="a2">
<a class="active" href="index.jsp">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
  <a href="user\adminloginmenu.jsp">Admin Login</a>
<a href="user\bankloginform.jsp">User Login</a>
 </div>

<%@include file="user/slide.jsp" %>
</body>  
</html>  