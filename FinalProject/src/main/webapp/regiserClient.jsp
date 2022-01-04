<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

	<%
	response.setHeader("Cache-Control", "no-cache , no-store ,must-revalidate ");
		if(session.getAttribute("registFail")!=null && session.getAttribute("registFail").toString().equals("true"))
		{
			out.println("Nahi hua");
			session.setAttribute("registFail", null);
			
		}
	%>
	
	<div class="containerC">
	<div class="navv">
	<%@ include file="navbar.jsp" %>
	</div>
	
	<div class="register-dabba">
	
	<img width="100px;" alt="" src="images/logo.png">
	<h3 style="color: white;" class="">Client Register</h3>
	<form action="client_register" method="post">
	
	
		<div class="input-group">
		<input style="border-radius: 20px;" id="name" type="text" name="fullname" required>
		<label for="name"><span>Full Name</span></label>
			
		</div>
		<div class="input-group">
			<input style="border-radius: 20px;" id="username" type="text" name="username1" required>
			<label for="username">Username</label>
		</div>
		<div class="input-group">
			<input style="border-radius: 20px;" id="email" type="email" name="email" required>
			<label for="email">Email</label>
			
		</div>
		<div class="input-group">
			<input style="border-radius: 20px;" id="pass" type="password" name="upass" required>
			<label for="pass">Password</label>
			
		</div>
		
		<button type="submit">Submit</button>
	</form>
	</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<style>
input{
margin: 10px;
}
.navv
{
backdrop-filter:blur(10px);
box-shadow: 5px 10px 40px rgba(0,0,0,0.3);
position:relative;

top:-60px; 
}
.register-dabba
{
text-align:center;
width:30rem;
backdrop-filter:blur(20px);
box-shadow: 5px 10px 40px rgba(0,0,0,0.3);
display: flex;
align-items: center;
justify-content: center;
flex-direction: column;
}

.containerC{
height: 100vh;
width:100%;
background-image: linear-gradient(rgba(255, 255, 255, 0.1),#5584AC) , url(images/registerimg.jpg);

background-position: center;
background-size: cover;
padding-left: 5%;
padding-right:5%;
box-sizing: border-box;
position: relative;
display: flex;
flex-direction:column;
align-items: center;
justify-content: center;
}
.input-group
{
margin-bottom: 30px;

}

label
{
height:100%;
position: absolute;
left:10px;
top:0;
padding: 10px;
color: #fff;
cursor: text;
transition:0.2s;
}


input
{

width:100%;
padding:10px;
outline:0;
border:1px solid #fff;
color:#fff;
background: transparent;
font-size: 15px;
}




button
{
padding:10px 0 ;
color:#fff;
border-radius: 10px;

outline: none;
background: transparent;
border:1px solid #fff ;
width: 100%;
cursor: pointer;

}


form{
width: 90%;
max-width: 600px;
}
input:focus~label
{
top:-35px;
font-size: 14px;
}
input:valid~label
{
top:-35px;
font-size: 14px;
}

</style>
</html>