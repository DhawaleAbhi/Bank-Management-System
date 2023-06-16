<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html> 
<head>
<script>


function checkLetter(event)
{
if((event.charCode >= 48 && event.charCode <=57))

   {
   return true;
   }
   else
   {
    alert("enter only number");
    return false;
   }
}

function Validate()
 { 
    var n1=document.forms["myform"] ["amount"].value;
      if(n1<500 || n1>10000)
          {
                alert("withdraw amount between 500 to 10000");
	            return false;
          }
 }
</script>

<style>
.a5
{
	margin-left:500px;
	margin-top:190px;
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
#i1
{
	margin-left:41px;
}
#i2
{
	margin-left:60px;
}
#i4
{
	margin-left:80px;
}
h2
{
	margin-left:80px;
}
</style>
</head> 
<body>
<%@include file="bankdashboard.jsp" %>

<div class="a5">
 <h2>Withdraw Form</h2>
 <form  name="myform" action="withdraw.jsp" method="post" onsubmit="return Validate()"> <br>
 <b>AMOUNT:</b><input type="text" id="i4" name="amount" placeholder="Amount" required onkeypress="return checkLetter(event)"> <br><br>
 <b>PASSWORD:</b><input type="password" id="i2" name="password" placeholder="Password" required > <br><br><br>
 <input type="submit" id="i5" value="withdraw">
 </form>
 </div>
 </body>  
</html>  