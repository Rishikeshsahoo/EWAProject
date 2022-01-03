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
<%@ include file="navbar.jsp" %>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);



if(session.getAttribute("Name")==null)
{
	session.setAttribute("loginFail", "true");
	session.setAttribute("loginMessage", "Please login to access this page");
	response.sendRedirect("client_login.jsp");
}

%>
	<h4>Hello <%= session.getAttribute("Name") %></h4>
	<h2>Here is a list of problems</h2>
	
	<div class="container">
		<div class="row">
			<div class="col-lg-3 one"><a href="problem?problems=Gas&bookslots=false">Gastrology</a></div>
			<div class="col-lg-3 two"><a href="problem?problems=dental&bookslots=false">Dental care</a></div>
			<div class="col-lg-3 one"><a href="problem?problems=ent&bookslots=false">Ears Nose Throat</a></div>
		</div>
		<div class="row">
			<div class="col-lg-3 two" ><a href="problem?problems=heart&bookslots=false">Cardiology</a></div>
			<div class="col-lg-3 one"><a href="problem?problems=liver&bookslots=false">Liver and Kidney</a></div>
			<div class="col-lg-3 two"><a href="problem?problems=brain&bookslots=false">Brain</a></div>
		</div>
		<div class="row">
			<div class="col-lg-3 one"><a href="problem?problems=physio&bookslots=false">Physiology</a></div>
			<div class="col-lg-3 two"><a href="problem?problems=neuro&bookslots=false">Neurosurgery</a></div>
			<div class="col-lg-3 one"><a href="problem?problems=neuro&bookslots=false">Neurosurgery</a></div>
		</div>
		
	</div>
		

	<form action="userLogout">
	<button type="submit">logout</button>
	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

<style>

.col-lg-3
{
text-align: center;
padding-top: 6rem;
padding-bottom: 6rem;

border: 2px solid;
}
.one{
background:red;
}
.one:hover{
background:gold;
}
.two
{
background: green;
}
.row
{
display: flex;
justify-content: space-between;
margin: 1.5rem 0;
}

</style>
</html>