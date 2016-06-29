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
			<h3>New Device Infomation</h3>
			<form class="form-inline" role="form">

				<div class="form-group">
					<label class="control-label">Device Name:</label>
					<div class="controls">
						<input type="text" name="devicename" class="span3">
					</div>
				</div>

				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						id="menu1" data-toggle="dropdown">
						Location <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Living room</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Bed Room</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Kitchen</a></li>
						<li role="presentation" class="divider"></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Others</a></li>
					</ul>
				</div>
				<fieldset>
					<a href="index.jsp" class="btn btn-success" type="submit">Add
						New Device</a>
				</fieldset>
			</form>
		</div>
	</div>

</body>

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="bootstrap\js\bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap\js\bootstrap.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</html>