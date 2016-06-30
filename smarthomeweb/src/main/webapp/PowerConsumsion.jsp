<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="Entity.DeviceInfo"%>
<%@page import="Controller.DeviceManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.awt.List"%>
<%@ page import="Entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Device Manager</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<!-- List Of Device -->
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="DeviceManager.jsp">Display</a></li>
		<li><a data-toggle="tab" href="AddNewDevice.jsp">Add New Device</a></li>
	</ul>

	<div class="tab-content">
		<div id="view" class="tab-pane fade in active">
			<p>
			<%
 			%>
		 	<!-- List Of Device -->
		 	<div class="container">
		 		<h2>Device Info</h2>
		 		<table class="table">
		 			<thead>
		 				<tr>
		 					<th>Device ID</th>
		 					<th>Device Name</th>
		 					<th>Location</th>
		 					<th>TimeConsumsion</th>
		 					<th>PowerConsumsion</th>
		 					<th>Time Start</th>
		 				</tr>
		 			</thead>
		 			<tbody>
						<%
							for (DeviceInfo u : DeviceManager.deviceListCpy) {
						%>
						<tr class="success">
							<td><%=u.getDeviceId()%></td>
							<td><%=u.getDeviceName()%></td>
		 					<td><%=u.getLocation()%></td>
		 					<td><%=u.getSpendTime()%></td>
		 					<td><%=u.getPowerConsumption()%></td>
		 					<td><%=u.getDateTime()%></td>
		 				</tr>
		 				<%
		 					}
		 				%>
		 			</tbody>
		 		</table>
		 	</div>
		</div>
		<div id="Add New Device" class="tab-pane fade">
			<h3>Menu 1</h3>
			<p>Some content in menu 1.</p>
		</div>
	</div>
</body>

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="bootstrap\js\bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap\js\bootstrap.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</html>