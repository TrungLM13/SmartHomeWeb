<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.DeviceInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap\css\customer.css" rel="stylesheet">
<title>Power consumption</title>
<jsp:include page="header.jsp"></jsp:include>
<style>
body {
	position: relative;
}
</style>
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
		// Get List Device type from database
		var deviceType = [ "Light", "Fridge", "Air Conditioner",
				"Washing Machine", "TV" ];

		//Get Power Consumption of device by Type
		var powerConsumption = [ 3, 1, 1, 1, 2 ];

		var data = new google.visualization.DataTable();
		data.addColumn('string', 'Topping');
		data.addColumn('number', 'Slices');

		for (var i = 0; i < deviceType.length; ++i) {
			var device = {
				deviceType : deviceType[i],
				powerConsumption : powerConsumption[i]
			};
			data.addRows([ [ device.deviceType, device.powerConsumption ] ]);
		}
		var piechart_options = {
			title : 'Power Consumption By Device Type',
			width : 500,
			height : 300
		};
		var piechart = new google.visualization.PieChart(document
				.getElementById('piechart_div'));
		piechart.draw(data, piechart_options);

		//Column Chart
		var Month = [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
				"Sep", "Oct", "Nov", "Dec" ];

		var powerConsumptionByMonth = [ 10, 12, 14, 22, 20, 16, 30, 25, 27, 60,
				14, 10 ];
		
		var dataBarChart = new google.visualization.DataTable();
		dataBarChart.addColumn('string', 'Month');
		dataBarChart.addColumn('number', 'Power Consumption');
		for (var i = 0; i < Month.length; ++i) {
			var device = {
				deviceType : Month[i],
				powerConsumption : powerConsumptionByMonth[i]
			};
			dataBarChart.addRows([ [ device.deviceType, device.powerConsumption ] ]);
		}
		
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
		data.addColumn('string', 'Date');
		data.addColumn('number', 'Line');
		data.addColumn('number', 'good');
		data.addColumn('number', 'bad');
		data.addRows([ [ '1', 10, 10, null ], [ '2', 16, 16, null ],
				[ '3', 13, 13, null ], [ '4', 17, null, 17 ],
				[ '5', 3, 3, null ], [ '6', 6, 6, null ],
				[ '7', 12, 12, null ], [ '8', 18, 18, null ],
				[ '9', 9, 9, null ], [ '10', 20, 20, null ],
				[ '11', 12, 12, null ], [ '12', 8, 8, null ],
				[ '13', 15, 15, null ], [ '14', 15, 15, null ],
				[ '15', 21, 21, null ], [ '16', 11, 11, null ],
				[ '17', 14, 14, null ], [ '18', 12, 12, null ],
				[ '19', 18, 18, null ], [ '20', 13, 13, null ],
				[ '21', 16, 16, null ], [ '22', 23, 23, null ],
				[ '23', 19, 19, null ], [ '24', 15, 15, null ],
				[ '25', 20, 20, null ], [ '26', 19, 19, null ],
				[ '27', 0, 0, null ], [ '28', 0, 0, null ],
				[ '29', 0, 0, null ], [ '30', 0, 0, null ] ]);

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