<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<form role="form">
				<div class="form-group">
					<label for="email">Email address:</label> <input type="email"
						class="form-control" id="email">
				</div>
				<div class="form-group">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" id="pwd">
				</div>
				<div class="checkbox">
					<label><input type="checkbox"> Remember me</label>
				</div>
				<div>
					<a href="index.jsp" class="btn btn-success" type="submit">Login</a>
				</div>			</form>
		</div>
	</div>
</body>
</html>