<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="navbar">
	
	<a href="index.jsp" id="iconimgg"><img  class="logoimg" alt="" src="images/logo.png"></a>
	
	<nav>
		<ul>
			<li> <a href="index.jsp">Home</a> </li>
			<li> <a href="clientHome.jsp">Category</a> </li>
			<li> <a href="">Doctors</a> </li>
			<li> <a href="">Bookings</a> </li>
		
		</ul>
	
	</nav>
	
</div>
</body>

<style>
.logoimg
{
margin-left:20px;
width:14.5%;
cursor: pointer;
}
nav
{
	
	padding-left: 60px;
}
nav ul li{
display: inline-block;
list-style: none;
margin: 0 20px;
}
nav ul li a{
text-decoration: none;
color: #2F3A8F;
font-weight: bold;
}
#iconimgg{
display: inline;
}


</style>

</html>