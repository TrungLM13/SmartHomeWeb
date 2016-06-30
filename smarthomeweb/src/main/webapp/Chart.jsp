<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.DeviceInfo"%>
<%@ page import="Controller.*" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Power consumption</title>
<jsp:include page="header.jsp"></jsp:include>
<head>
<script type="text/javascript" src="bootstrap\js\bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap\js\bootstrap.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
	// Load Charts and the corechart and barchart packages.
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});

	// Draw the pie chart and bar chart when Charts is loaded.
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		var data = new google.visualization.DataTable();
		data.addColumn('string', 'Topping');
		data.addColumn('number', 'Slices');

		<%
			DeviceManager deviceManager = new DeviceManager();
			deviceManager.GetPowerConsumptionByDeviceType();
		    Map<String, Double> u = deviceManager.powerConsumptionByDeviceType;	
			Set keys = u.keySet();
			for (Iterator i = keys.iterator(); i.hasNext();) {
				 String key = (String) i.next();
			     Double value = (Double) u.get(key);
		%>
			data.addRows([ [" <%=key%>" , <%=value%>] ]);
		<%}%>
		var piechart_options = {
			title : 'Power Consumption By Device Type',
			width : 500,
			height : 300
		};
		var piechart = new google.visualization.PieChart(document
				.getElementById('piechart_div'));
		piechart.draw(data, piechart_options);

		
		//Column Chart
		var dataBarChart = new google.visualization.DataTable();
		dataBarChart.addColumn('string', 'Month');
		dataBarChart.addColumn('number', 'Power Consumption');
		<%
		deviceManager.GetSumPowerConsumptionPerMonth("2016");
	    u = deviceManager.powerConsumptionPerMonth;	
		keys = u.keySet();
		for (Iterator i = keys.iterator(); i.hasNext();) {
			 String key = (String) i.next();
		     Double value = (Double) u.get(key);
	%>
		dataBarChart.addRows([ [" <%=key%>" , <%=value%>] ]);
		<%}%>
		
		var barchart_options = {
				title : 'Power Consumption of All Device',
				width : 700,
				height : 300,
				legend : 'none'
			};
		
		
		var barchart = new google.visualization.ColumnChart(document
				.getElementById('columnchart_material'));
		barchart.draw(dataBarChart, barchart_options);

		//Line Chart
		var data = new google.visualization.DataTable();
		data.addColumn('string', 'Day');
		data.addColumn('number', 'Line');
		data.addColumn('number', 'good');
		data.addColumn('number', 'bad');
		<%
		deviceManager.GetSumPowerConsumptionPerDay("Light", "1", "2016");
	    u = deviceManager.powerConsumptionPerDay;	
		keys = u.keySet();
		for (Iterator i = keys.iterator(); i.hasNext();) {
			 String key = (String) i.next();
		     Double value = (Double) u.get(key);
		     
		     if(value > 20){
		%>
		data.addRows([ [" <%=key%>" , <%=value%>, null, <%=value%>] ]);
				<%}
				     else {%> 
				     data.addRows([ [" <%=key%>" , <%=value%>, <%=value%>, null] ]);
				<%}%>
		<%}%>
		
		var options = {
			title : 'Power Consumption by day',
			pointSize : 5,
			series : [ {
				color : 'black',
				pointSize : 0
			}, {
				color : 'blue',
				lineWidth : 0
			}, {
				color : 'red',
				lineWidth : 0
			} ]
		};

		var chart = new google.visualization.LineChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);

	}
</script>
</head>

<body>
	<div class="row">
		<div class="col-md-6">
			<td><div id="piechart_div" style="border: 1px solid #ccc"></div></td>
		</div>
		<div class="col-md-6">
			<td><div id="columnchart_material"
					style="border: 1px solid #ccc"></div></td>
		</div>
	</div>

	<br>
	<br>
	<div class="col-md-6 col-md-offset-3">
		<form class="form-inline" role="form">
			<div class="form-group">
				<label for="device">Device:</label> <select class="form-control">
					<option value="1">Light - Living Room</option>
					<option value="2">Light - Bed Room</option>
					<option value="3">Light - Kitchen</option>
					<option value="4">TV - Living Room</option>
					<option value="5">Air Conditioner - Living Room</option>
				</select>
			</div>
			<div class="form-group">
				<label for="month">Month:</label> <select class="form-control">
					<option value="1">Jan</option>
					<option value="2">Feb</option>
					<option value="3">Mar</option>
					<option value="4">Apr</option>
					<option value="5">May</option>
					<option value="6">Jun</option>
					<option value="7">Jul</option>
					<option value="8">Aug</option>
					<option value="9">Sep</option>
					<option value="10">Oct</option>
					<option value="11">Nov</option>
					<option value="12">Dec</option>

				</select>
			</div>
			<div class="form-group">
				<label for="year">Year:</label> <select class="form-control">
					<option value="1">2016</option>
					<option value="2">2015</option>
					<option value="3">2014</option>
					<option value="4">2013</option>
					<option value="5">2012</option>

				</select>
			</div>
		</form>
	</div>

	<div class="row">
		<div class="span10 vleft" id="chart_div"
			style="width: 1450px; height: 500px;"></div>
	</div>

</body>
</html>