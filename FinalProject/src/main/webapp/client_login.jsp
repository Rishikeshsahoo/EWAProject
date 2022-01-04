<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,200;0,300;0,400;0,500;0,600;1,600&family=Noto+Sans:wght@400;700&family=Rampart+One&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="navbarr">
	<%@ include file="navbar.jsp" %>
	</div>
	<%
		response.setHeader("Cache-Control","no-cache");
	  	response.setHeader("Cache-Control","no-store");
	  	response.setHeader("Pragma","no-cache");
	  	response.setDateHeader("Expires", 0);
	  	
	  	if(session.getAttribute("Name")!=null)
	  	{
	  		response.sendRedirect("clientHome.jsp");
	  	}
	  	%>
	  	
	<br>
	<br>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-5">
					<div class="fill">
						<img class="img1" alt="" src="images/doc.jpg">
					</div>
				</div>
				<div class="col-lg-4">
					<h3 class="title">Client login </h3>
				<%
		if(session.getAttribute("loginFail")!=null && session.getAttribute("loginFail").toString().equals("true"))
		{
			//login message access
			String mess=session.getAttribute("loginMessage").toString();
			 %>	
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
  			<strong> <%= mess %> </strong> 
  			<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
			<%
			session.setAttribute("loginFail", null);
			session.setAttribute("loginMessage", null);
			//#6EFFCB
		}
	%>
					<form action="client_auth" method="post">
						
						<div class="mb-3">
					    	<label for="exampleInputEmail1" class="form-label">Username::</label>
					    	<input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
					    
					  	</div>
						<br>
						
						<div class="mb-3">
					    	<label for="exampleInputPassword1" class="form-label">Password::</label>
					    	<input type="password" name="password" class="form-control" id="exampleInputPassword1" required>
					  	</div>
						<div class="mb-3 form-check">
					    <input type="checkbox" class="form-check-input" id="exampleCheck1" >
					    <label class="form-check-label" for="exampleCheck1">Check me out</label>
					  </div>
						<button type="submit" class="btn btn-primary" >Submit</button>
						<br>
						<a href="regiserClient.jsp">Haven't you registered yet??</a>
					</form>
					
					
				</div>
			</div>
		</div>
	</section>
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

<style>


*{
margin: 0;
padding:0;
}

.navbarr
{
padding: 10px 30px 10px; 30px;;
}


.title{
font-family: 'Noto Sans', sans-serif;
font-size: 2.7rem;
}

.row{
border-radius: 2%;
background-color: white;
box-shadow: 5px 10px 30px rgba(0,0,0,0.3);
position:relative;
bottom: 50px;
}
body{
background-color: #F8E7E4;
}
.img1{
width:100%;
height: 40rem;
border-radius: 5% 0 0 5%;
box-shadow: 5px 10px 40px rgba(0,0,0,0.3);


}
.fill {
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden

}
.fill img {
    flex-shrink: 0;
    min-width: 10%;
    min-height: 10%
}
.col-lg-5
{
padding: 0;
background-color: #F8E7E4;
}
.col-lg-4{
margin-top: 8.5rem;;
margin-left: 10rem;
}
h3
{
position:relative;
bottom: 4rem;
}
</style>

</html>