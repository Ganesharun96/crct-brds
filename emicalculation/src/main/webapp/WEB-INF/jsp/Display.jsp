<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #333;
}

.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.active {
	background-color: #4CAF50;
	color: white;
}

.topnav .icon {
	display: none;
}

@media screen and (max-width: 600px) {
	.topnav a:not (:first-child ) {
		display: none;
	}
	.topnav a.icon {
		float: right;
		display: block;
	}
}

@media screen and (max-width: 600px) {
	.topnav.responsive {
		position: relative;
	}
	.topnav.responsive .icon {
		position: absolute;
		right: 0;
		top: 0;
	}
	.topnav.responsive a {
		float: none;
		display: block;
		text-align: left;
	}
}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

</style>
</head>
<body>

	<div class="topnav" id="myTopnav">
		<a href="http://localhost:8085/add">Home</a> <a href="#news"
			class="active">RepaymentSchedule</a> <a href="#contact">InstallmentNo</a>
		<a href="#about">About</a> <a href="javascript:void(0);" class="icon"
			onclick="myFunction()"> <i class="fa fa-bars"></i>
		</a>
	</div>


	<div id="wrapper">
		<div id="header">
			<h2>REPAYMENT SCHEDULE</h2>
		</div>
	</div>
	

	<div id="container">

		<div id="content">



			<table>
				<tr>
					<th>id</th>
					<th>value</th>
					<th>outstandingPrinciple</th>
					<th>interest</th>
					<th>loanAmount</th>
					<th>installmentAmount</th>
				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="temp" items="${outputs}">

					<tr>
						<td>${temp.id}</td>
						<td>${temp.value}</td>
						<td>${temp.outsandingPrincipals}</td>
						<td>${temp.interst}</td>
						<td>${temp.principals}</td>
						<td>${temp.emi}</td>
					</tr>
					
				</c:forEach>

			</table>


  <a href="/s">click here to get particular installmentno</a>              

		</div>
 
<!-- <a href="http://localhost:8085/user1.jsp"> user</a> -->
	</div>


</body>
</html>



