<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add New Device</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>

	<ul class="nav nav-tabs">
		<li><a data-toggle="tab" href="DeviceManager.jsp">Display</a></li>
		<li class="active"><a data-toggle="tab" href="AddNewDevice.jsp">Add
				New Device</a></li>
	</ul>

	<div class="tab-content">
		<div id="view" class="tab-pane fade"></div>
		<div id=" Add New Device" class="tab-pane fade in active">
		
			<div class="col-md-6 col-md-offset-3">
			<h4>New Device Infomation</h4>
				<form role="form">
					<div class="form-group">
						<label for="devicename">Device Name:</label> <input type="text"
							class="form-control" id="pwd">
					</div>
					<div class="form-group">
						<label for="year">Location:</label> <select class="form-control">
							<option value="1">Living</option>
							<option value="2">Bed Room</option>
							<option value="3">Kitchen</option>
							<option value="4">Others</option>
						</select>
					</div>
					<div>
						<a href="index.jsp" class="btn btn-success" type="submit">Add
							New Device</a>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="bootstrap\js\bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap\js\bootstrap.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</html>