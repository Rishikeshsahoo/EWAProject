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
	<form action="client_register" method="post">
		<label>Full Name::</label>
		<input type="text" name="fullname">
		<br>
		<label>Username::</label>
		<input type="text" name="username1">
		<br>
		<label>Email::</label>
		<input type="email" name="email">
		<br>
		<label>Password::</label>
		<input type="password" name="upass">
		<br>
		<button type="submit">Submit</button>
	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<style>
input{
margin: 10px;
}
</style>
</html>