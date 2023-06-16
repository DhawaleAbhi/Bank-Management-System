<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html> 
<head>
<script>



function checkLetter(event)
{
if((event.charCode > 64 && event.charCode <91) || (event.charCode > 96 && event.charCode <123))
   {
   return true;
   }
   else
   {
   alert("enter only letters");
   return false;
   }
}

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



function Validate()
 {          
           var n1=document.forms["myform"] ["apin"].value;
		   var n2=document.forms["myform"] ["age"].value;
		   var n3=document.forms["myform"] ["phno"].value;
           var n4=document.forms["myform"] ["balance"].value;
		   var n5=document.forms["myform"] ["ano"].value;
		   var n6=document.forms["myform"] ["fname"].value;
		   var n7=document.forms["myform"] ["mname"].value;
		   var n8=document.forms["myform"] ["lname"].value;
		   var n9=document.forms["myform"] ["address"].value;
           var mobileno = /^((\\+91-?)|0)?[0-9]{10}$/;
		   var password= /^[a-zA-Z]\w{7}$/;
			  
			if(n5.length>10)
              {
                alert("Acc no should be 10 character");
                return false;
              } 
			if(n6.length>15)
              {
                alert("fname should be 15 character");
                return false;
              } 
			if(n7.length>15)
              {
                alert("mname should be 15 character");
                return false;
              } 
			if(n8.length>15)
              {
                alert("lname should be 15 character");
                return false;
              }
			if(n9.length>45)
              {
                alert("address should be 45 character");
                return false;
              }
			if(n1.length>8 || n1.length<8)
              {
                alert("password should be 8 character");
                return false;
              }
	   
          if(n2<18 || n2>99)
            {
                alert("age between 18 to 99");
                return false;
            }
		   
		  if(n3.match(mobileno)) 
		    {
 		    }
		   else
		    {
			    alert("mobile number should be 10 digit ");
	            return false;   
		    }
		   
	    if(n4<500 || n4>50000)
          {
                alert("please enter amount between 500 to 50000");
	            return false;
          }
		 
 }

</script>
<style>

<style>
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
.a5
{
	margin-left:500px;
	margin-top:190px;
}


#i1
{
	margin-left:28px;
}
#i2
{
	margin-left:20px;
}
#i3
{
	margin-left:30px;
}
#i4
{
	margin-left:10px;
}
#i5
{
	margin-left:32px;
}
#i6
{
	margin-left:53px;
}
#i7
{
	margin-left:92px;
}
#i8
{
	margin-left:42px;
}
#i9
{
	margin-left:47px;
}

#i10
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

<div class="a5">
 <h2>Add Account Form</h2>
 <form action="addaccount.jsp" method="post"  name="myform" onsubmit="return Validate()" > <br>
 <b>ACCOUNT No:</b><input type="text" id="i1" name="ano" placeholder="Acc No" required onkeypress="return checkNumber(event)"> <br><br>
 <b>ACCOUNT PIN:</b><input type="password" id="i2" name="apin" placeholder="Acc PIN" required > <br><br>
 <b>FIRST NAME:</b><input type="text" id="i3" name="fname" placeholder="FIRST NAME" required onkeypress="return checkLetter(event)"> <br><br>
 <b>MIDDLE NAME:</b><input type="text" id="i4" name="mname" placeholder="MIDDLE NAME" required onkeypress="return checkLetter(event)"> <br><br>
 <b>LAST NAME:</b><input type="text" id="i5" name="lname" placeholder="LAST NAME" required onkeypress="return checkLetter(event)"> <br><br>
 <b>ADDRESS:</b><input type="text" id="i6" name="address" placeholder="ADDRESS" required> <br><br>
 <b>AGE:</b><input type="text" id="i7" name="age" placeholder="AGE" required onkeypress="return checkNumber(event)" size="2"> <br><br>
 <b>Mobile NO:</b><input type="text" id="i8" name="phno" placeholder="PH NO" required onkeypress="return checkNumber(event)"> <br><br>
 <b>Amount:</b><input type="text" id="i9" name="balance" placeholder="BALANCE" required onkeypress="return checkNumber(event)"> <br><br>
 <br>
 <input type="submit" id="i10" value="Add Account">
 </form>
 </div>
 </body>  
</html>  