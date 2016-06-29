<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import ="Entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap core CSS -->
<link href="bootstrap\css\bootstrap.min.css" rel="stylesheet">
<link href="bootstrap\css\bootstrap-theme.min.css" rel="stylesheet">
<link href="bootstrap\css\bootstrap-themem.css" rel="stylesheet">
<link href="bootstrap\css\bootstrap.css" rel="stylesheet">
<link href="bootstrap\css\customer.css" rel="stylesheet">

</head>
<body>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">Smart Energy</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="index.jsp">Home</a></li>
			<li><a href="DeviceManager.jsp">Device Manager</a></li>
			<li><a href="Chart.jsp">Power Consumption</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<!-- <li><a href="#"> <span class="glyphicon glyphicon-bell"></span>
			</a></li> -->
			<li><a href="#">
					<div class="notification-icon">
						<span class="glyphicon glyphicon-bell" style="font-size:18px;"></span> 
						<span class="badge">5</span>
					</div>
			</a></li>

			<li><a href="#"><span class="glyphicon glyphicon-user"></span>
					Sign Up</a></li>
			<li><a href="Login.jsp"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</ul>
	</div>
	</nav>

</body>
</html>