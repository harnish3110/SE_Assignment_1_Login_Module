<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css"></link>
</head>
<body>
	<article>
	<form class="" action="registration" method="post">
		<div class="col-md-6 form-group">
			<label for="fname">First Name</label> <input type="text" name="fName"
				id="fName" required>
		</div>
		<div class="col-md-6 form-group">
			<label for="lname">Last Name</label> <input type="text" name="lName"
				id="lName" required>
		</div>
		<div class="col-md-6 form-group">
			<label for="address">Address</label> <input type="text"
				name="address" id="address" required>
		</div>
		<div class="col-md-6 form-group">
			<label for="number">Phone Number</label> <input type="text"
				name="number" id="number" required>
		</div>
		<div class="col-md-6 form-group">
			<label for="eMail">Email</label> <input type="text" name="eMail"
				id="eMail" required>
		</div>
		<div class="col-md-6 form-group">
			<label for="uName">User Name</label> <input type="text" name="uName"
				id="uName" required>
		</div>
		<div class="col-md-6 form-group">
			<label for="password">Password</label> <input type="text"
				name="password" id="password" required>
		</div>
		<button type="submit" class="btn btn-primary">Register</button>
	</form>
	</article>
</body>
</html>