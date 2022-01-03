<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<div class="containerC">

<%@ include file="navbar.jsp" %>

<div class=" selectcateg">

<h3>Are you a client or doctor</h3>
<a class="btn btn-primary btn-lg" href="client_login.jsp">Client</a>
<a class="btn btn-primary btn-lg" href="doctor_login.jsp">Doctor</a>
<p>
	Sed ut perspiciatis unde  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab
	architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas
	sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
</p>
</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

<style>

*{
margin: 0;
padding:0;
}
.containerC{
height: 100vh;
width:100%;
background-image: url(images/background4.png);
background-position: center;
background-size: cover;
padding-left: 5%;
padding-right:5%;
box-sizing: border-box;
position: relative;

}

.selectcateg
{
position: relative;
text-align: center;
top:30vh;
left:41.2vw;
display: inline-block;
max-width: 30rem;
}
.btn-primary
{
border:#5676FF;
background-color: #5676FF;
}
.selectcateg a
{
margin: 2rem 0.7rem 0 0.7rem;
}
.selectcateg p
{
margin-top: 3rem;
}

</style>


</html>
