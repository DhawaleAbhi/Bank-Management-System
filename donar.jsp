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
            var n1=document.forms["myform"] ["bg"].value;
		   var n2=document.forms["myform"] ["age"].value;
		   var n3=document.forms["myform"] ["phno"].value;
        
		  
		   var n6=document.forms["myform"] ["fname"].value;
		   var n7=document.forms["myform"] ["mname"].value;
		   var n8=document.forms["myform"] ["lname"].value;
		   var n9=document.forms["myform"] ["address"].value;
           var mobileno = /^((\\+91-?)|0)?[0-9]{10}$/;
		   var bloodg= /^(A|B|AB|O)[+-]$/;
			  
			
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
			
	   
          if(n2<14 || n2>65)
            {
                alert("age between 14 to 65");
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
		   if(n1.match(bloodg)) 
		    {
 		    }
		   else
		    {
			    alert("Wrong Blood Group ");
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
<%@include file="back.jsp" %>

<div class="a5">
 <h2>Donar Details</h2>
 <form action="addaccount.jsp" method="post"  name="myform" onsubmit="return Validate()" > <br>
 
 <b>FIRST NAME:</b><input type="text" id="i1" name="fname" placeholder="FIRST NAME" required onkeypress="return checkLetter(event)"> <br><br>
 <b>MIDDLE NAME:</b><input type="text" id="i2" name="mname" placeholder="MIDDLE NAME" required onkeypress="return checkLetter(event)"> <br><br>
 <b>LAST NAME:</b><input type="text" id="i3" name="lname" placeholder="LAST NAME" required onkeypress="return checkLetter(event)"> <br><br>
 <b>ADDRESS:</b><input type="text" id="i4" name="address" placeholder="ADDRESS" required> <br><br>
 <b>AGE:</b><input type="text" id="i5" name="age" placeholder="AGE" required onkeypress="return checkNumber(event)" size="2"> <br><br>
 <b>Mobile NO:</b><input type="text" id="i6" name="phno" placeholder="PH NO" required onkeypress="return checkNumber(event)"> <br><br>
 <b>BLOOD GROUP:</b><input type="text" id="i7" name="bg" placeholder=" blood group" required onkeypress="return checkLetter(event)"> <br><br>
 <br>
 <input type="submit" id="i8" value="SUBMIT">
 </form>
 </div>
 </body>  
</html>  