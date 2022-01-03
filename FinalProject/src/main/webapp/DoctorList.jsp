<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader("Expires", 0);
	
	
if(session.getAttribute("Name")==null)
{
	response.sendRedirect("client_login.jsp");
	return;
}
%>

<% 

if(session.getAttribute("bookmessage")!=null )
{

	String flag=session.getAttribute("messageflag").toString();
	String message=session.getAttribute("bookmessage").toString();
	session.removeAttribute("bookmessage");
	session.removeAttribute("messageflag");
%>

<div class="alert alert-<%=flag %> alert-dismissible fade show" role="alert">
  <strong><%=message %></strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%
}

%>


<%


	ResultSet rs= (ResultSet)session.getAttribute("resultset");
	
%>
<div class="row">
<% 
	rs.beforeFirst();

	while(rs.next())
	{
		
			
%>

	
	<div class="col-lg-3">
	<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"><%=rs.getString(1) %></h5>
        <p class="card-text"><strong>Hospital:</strong> <%=rs.getString(4) %></p>
        <p class="card-text"><strong>Timings:</strong> <%=rs.getString(3) %></p>
        <p class="card-text"><strong>Slots Available:</strong> <%=rs.getString(6) %></p>
        <p class="longtext" class="card-text"><%=rs.getString(5) %></p>
    <a href="process_slots?Dname=<%=rs.getString(1) %>&Dslots=<%=rs.getString(6) %>&problem=<%=rs.getString(2) %>" class="btn btn-primary">Book slot</a>
  </div>
</div>
</div>
<% 

	}
%>
</div>

<a href="clientHome.jsp" class="btn btn-primary btn-sm"> GO BACK</a>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<style>
body{
text-align: center;
margin-left: 3%;
}

</style>
<script type="text/javascript">
var x=document.getElementsByClassName("longtext");
for(i=0;i<x.length;i++)
{
       x[i].textContent=x[i].textContent.slice(0,50)+".....";
}

</script>
</html>