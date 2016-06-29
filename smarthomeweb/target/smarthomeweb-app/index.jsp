<%@page import="Entity.DeviceInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.awt.List"%>
<%@ page import="Entity.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>smart home</title>
<!-- Custom styles for this template -->
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<%
		ArrayList<DeviceInfo> goodDeviceList = new ArrayList<DeviceInfo>();
		for (int i = 0; i < 10; ++i) {
			DeviceInfo deviceInfo = new DeviceInfo("Device001", "Light", 500, "28/6/2016", "Living Room", "Light", "good");
			goodDeviceList.add(deviceInfo);
		}

		ArrayList<DeviceInfo> badDeviceList = new ArrayList<DeviceInfo>();
		for (int i = 0; i < 10; ++i) {
			DeviceInfo deviceInfo = new DeviceInfo("Device002", "TV", 500, "28/6/2016", "Living Room", "TV","bad");
			badDeviceList.add(deviceInfo);
		}
	%>
	<!-- List Of Device -->
	<div class="container">
		<div class="alert alert-danger alert-dismissable">
			<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
			<strong>Warning: <br></strong>
			<%
				for (DeviceInfo u : badDeviceList) {
			%>
			<label>Device Name:<%=u.getDeviceName()%>, Location: <%=u.getLocation()%>,
				Status: <%=u.getStatus()%></label>
			<%
				}
			%>
		</div>

		<h2>Device Power Consumption</h2>
		<p>Some Info about your device: .active, .success, .info,
			.warning, and .danger.</p>
		<table class="table">
			<thead>
				<tr>
					<th>Device ID</th>
					<th>Device Name</th>
					<th>Power Consumption</th>
					<th>Date</th>
					<th>Location</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (DeviceInfo u : goodDeviceList) {
				%>
				<tr class="success">
					<td><%=u.getDeviceId()%></td>
					<td><%=u.getDeviceName()%></td>
					<td><%=u.getPowerConsumption()%></td>
					<td><%=u.getDateTime()%></td>
					<td><%=u.getLocation()%></td>
					<td><%=u.getStatus()%></td>
				</tr>
				<%
					}
				%>

				<%
					for (DeviceInfo u : badDeviceList) {
				%>
				<tr class="danger">
					<td><%=u.getDeviceId()%></td>
					<td><%=u.getDeviceName()%></td>
					<td><%=u.getPowerConsumption()%></td>
					<td><%=u.getDateTime()%></td>
					<td><%=u.getLocation()%></td>
					<td><%=u.getStatus()%></td>
				</tr>
				<%
					}
				%>

				<tr class="info">
					<td>3</td>
					<td>Device003</td>
					<td>Light</td>
					<td>Living Room</td>
					<td>good</td>
				</tr>
			</tbody>
		</table>

	</div>
</body>
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="bootstrap\js\bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap\js\bootstrap.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</html>