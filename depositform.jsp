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
	    if(n1<500 || n1>50000)
          {
                alert("deposit amount between 500 to 50000");
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
	margin-left:30px;
}
#i2
{
	margin-left:60px;
}
h2
{
	margin-left:80px;
	margin-top:-150px;
   font-size:30px;
}
form
{
	margin-left:-50px;
	margin-top:0px;
}
</style>
</head> 
<body>
<%@include file="dashboard.jsp" %>

<div class="a5">
 <h2>Deposit Form</h2>
 <form action="deposit.jsp" method="post" name="myform" onsubmit="return Validate()"> <br>
 <b>ACCOUNT No:</b><input type="text" id="i1" name="ano" placeholder="Acc No" required onkeypress="return checkLetter(event)"> <br><br>
 <b>AMOUNT:</b><input type="text" id="i2" name="amount" placeholder="Amount" required onkeypress="return checkLetter(event)"> <br><br>
 <br>
 <input type="submit" id="i5" value="Deposit">
 </form>
 </div>
 </body>  
</html>  