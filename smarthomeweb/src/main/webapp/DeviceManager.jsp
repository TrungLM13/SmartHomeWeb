<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<div class="container">
				<h2>Device Power Consumption</h2>
				<p>Some Info about your device: .active, .success, .info,
					.warning, and .danger.</p>
				<table class="table">
					<thead>
						<tr>
							<th>Number</th>
							<th>Device ID</th>
							<th>Device Name</th>
							<th>Location</th>
							<th>Status</th>
							<th>Operation</th>
						</tr>
					</thead>
					<tbody>
						<tr class="success">
							<td>1</td>
							<td>Device001</td>
							<td>TV</td>
							<td>Living Room</td>
							<td>good</td>
						</tr>
						<tr class="danger">
							<td>2</td>
							<td>Device002</td>
							<td>Air Conditioner</td>
							<td>Living Room</td>
							<td>Too low temperature</td>
						</tr>
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
			</p>

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