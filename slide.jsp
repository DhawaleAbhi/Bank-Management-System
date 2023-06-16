<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>  
<head>
<style>
.a3
{
    height:860px;
	width:100%;
}
</style>
</head>
<body>
<div class="a3">
<section>
  <img class="mySlides" src="1.jpg" style="width:100%">
  <img class="mySlides" src="2.jpg" style="width:100%">
  <img class="mySlides" src="3.jpg" style="width:100%">
</section>
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}
  x[myIndex-1].style.display = "block";
  setTimeout(carousel, 3000);
}
</script>





</body>  
</html>  