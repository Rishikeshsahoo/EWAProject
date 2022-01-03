<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);



if(session.getAttribute("DName")==null)
{
	response.sendRedirect("doctor_login.jsp");
}

%>
<h1>ENTER YOUR DETAILS HERE</h1>
<br>

<form action="doctor_register?detail=core" method="post">
	<label>Name:: </label>
	<input type="text" name="DName">
	<br>
	<label>Category:: </label>
	<select name="DCateg" >
  	<option value="gas">Gastrology</option>
  	<option value="dental">Dental Care</option>
  	<option value="physio">Physiology</option>
  	<option value="brain">Brain</option>
  	<option value="ent">Ears Nose Throat</option>
  	<option value="liver">Liver and Kidney</option>
  	<option value="heart">Cardiology</option>
  	<option value="neuro">Neurosurgery</option>
	</select>
	<br>
	<label>Hospital:: </label>
	<input type="text" name="DHosp">
	<br>
	<label>Timings:: </label>
	<input type="text" name="DTimings">
	<br>
	<label>Slots:: </label>
	<input type="number" name="DSlots">
	<br>
	<label>Details:: </label>
	<textarea rows="5" cols="20" name="Detais"></textarea>
	<br>
	<button type="submit">Submit</button>
	
</form>
<form action="userLogout">
	<button type="submit">logout</button>
	</form>
</body>
<style>
input{
margin: 10px;
}
</style>
</html>