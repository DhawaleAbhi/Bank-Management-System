<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html> 
<head>
<script>


</script>


<style>
.a1
{
	height:20%;
	width:100%;
	background-color:#FFF0F5;
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

.a2 a:hover
{
background-color: white;
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
}
a.active
{
 background-color: #4CAF50;
  color: white;
}

.a3
{
	margin-left:950px;
}
#i1
{
	margin-left:100px;
	background-color:#2F4F4F;
	color:white;
	height:30px;
	width:150px;
	border-radius:10px;
}
#i2
{
	margin-left:20px;
}
h2
{
	margin-left:80px;
}
.a4
{
	height:7%;
	width:100%;
	margin-top:50px;
	background-color:#2F4F4F;
;
}
.a3 img {
  border: 1px solid #ddd;
  border-radius: 0px;
  padding: 5px;
  width: 380px;
  height:300px;
 margin-left:-750px;
 margin-top:-150px;
 border:1px solid white;
}
h2
{
	margin-left:0px;
	color:orange;
}

</style>
</head> 
<body>
<div class="a1">
<center>
<h2> 
 
 </h2>
 </center>

</div>
<div class="a2">
<a class="active" href="../index.jsp">Home</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
 </div>
 
 <div class="a3">
 <h2>Bank Login</h2>
 <form name="myform" action="banklogin.jsp" method="post" > <br>
 <b>User ID:</b><input type="text" id="i2" name="ano" placeholder="Acc No" required> <br><br>
 <b>Password:</b><input type="password" id="i2" name="apin" placeholder="Acc Password" required> <br><br><br>
 <input type="submit" id="i1" value="login here">
 </form>
 <img src="homepage.jpg" alt="homepage">
 </div>
 
 <div class="a4">
 
 </div>
 </body>  
</html>  