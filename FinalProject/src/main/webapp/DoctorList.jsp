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
<%@ include file="navbar.jsp" %>
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
<section id="header">
<div class="row">
<div class="col-lg-7">
<ul>
<li> <a href="">Home--</a> </li>
<li> <a href="">Our Specialities--</a> </li>
<li> <a href="">Bariatric Surgery / Metabolic</a> </li>
</ul>
<h1>Bariatric Surgery / Metabolic</h1>
<a href="https://www.maxhealthcare.in/second-opinion" class="btn btn-primary btn-lg">Get a Second Opinion</a>
<a class="btn btn-primary btn-lg">Find a Doctor</a>
</div>

<div class="col-lg-5">
<img alt="" src="images/hospital.png">
<div class="shadow-box">
    
  </div>
</div>

</div>

</div>

</section>




<section id="koribakwaas">

<div class="container">
<div class="row">
<div class="col-lg-6">
<h1>Overview</h1>
<p class="static-text">Bariatric/obesity/weight loss surgery is a treatment option for patients
 suffering from morbid obesity. It is considered to be one of the most effective methods for weight
  loss and long-term weight maintenance. Moreover, this weight loss surgery causes significant improvement
   in obesity-related comorbid conditions like Type 2 diabetes, high blood pressure, joint pain, sleeping
    disorders like sleep apnea, heart diseases, infertility issues and more. The bariatric or weight loss surgery
     cost in India is far less when compared to its western counterparts, even though the same standard of care offered
      is at par with global standards.<br><br>

Bariatric surgery is performed using the Laparoscopic technique
 (Keyhole surgery – minimally invasive), and most of the patients are walking
  around on the same day of the surgery.<br><br>

Bariatric surgical procedures cause weight loss by restricting
 the amount of food intake, causing less absorption of calories, or by
  a combination of both gastric restriction and malabsorption. The weight loss surgeries
   are performed using minimally invasive techniques (laparoscopic surgery).

<br><br><strong>Best bariatric weight loss surgery options</strong><br><br>
The best hospitals for bariatric or weight loss surgery provide following surgery options-
<br>
</p>
<ul>
  <li><p> Severe sleep apnea</p> </li>
  <li><p> Heart disease</p> </li>
  <li><p> High blood pressure</p> </li>
  <li><p> High blood pressure</p> </li>
  <li><p> Type 2 diabetes</p> </li>
</ul>
<p>
<strong>What are the Risks Involved?</strong><br><br>
Some of the risks related to the weight loss treatment include infection, bleeding, 
anastomotic leaks, blood clots in legs and anaesthesia issues. In the long run, some deficiencies
 maybe observed in patients who are non-compliant the most common of which is Vitamin B12 deficiency however it can be managed effectively.
<br><br>
<strong>Results of the Weight Loss Surgery</strong><br><br>
Bariatric surgery and other weight loss treatments can provide long-term weight loss. The amount of weight
 a person loses depends on the type of surgery and also the change in their lifestyle habits. It is possible
  for a person to lose half, or even more, of their excess weight within a period of two years depending on the
   initial weight. Approximately, 70% of the excess body weight is lost.
</p>
</div>


  
</div>
</div>

</section>



<section id="doctors">

<div class="container">
<h2>List of Doctors</h2>
<hr class="bolderr" size="10">
<hr>

<div class="row">
<% 
	rs.beforeFirst();

	while(rs.next())
	{
		
			
%>



	
	<div class="col-lg-3">
	<div class="card" style="width: 18rem;">
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
</div>
</section>






<a href="clientHome.jsp" class="btn btn-primary btn-sm"> GO BACK</a>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<style>
.bolderr
{
position: relative;
top: 20px;
width:22.5rem;
background-color: blue;
color:#003a70;
z-index: 10;
}
.col-lg-5 img
{
width:42%;
position: relative;
bottom: 55px;
left:50px;
z-index: 2;
}

#koribakwaas p
{
color: gray;
line-height: 1.5;
font-size: 1.1rem;
}

#koribakwaas

{
position: relative;
z-index: 3;
background-color: #FFFF;

}

.shadow-box
{
position: absolute;
transform: translate(-50%,-50%) rotate(
-120deg);
right:-190px;
top:500px;
background-color: rgba(0,0,0,0.4);
height: 198px;
width: 500px;
}

#header ul
{
position:relative;
padding: 0;
bottom: 50px;
}
#header ul li{
display: inline-block;
list-style: none;
margin: 0;
}
#header ul li a{
text-decoration: none;
color: #FFF;
}

.card{
text-align: center;

}

#doctors h2
{
color:#003a70;
}

#doctors
{
position: relative;
z-index: 4;
background-color: #fff;
padding-top: 90px;
}

#doctors .row
{
margin-top: 100px;
}

#header
{
height: 45vh;
width:100%;
background-color: #5584AC;
 
}
#header .row
{
padding-top:5rem;
margin-left: 10rem;
color: white;
}

#header .btn
{
margin-top:50px;
width:260px;
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