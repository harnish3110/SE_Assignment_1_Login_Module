<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css"></link>
<title>Login Page</title>
</head>
<body class="container">
	<div class="col-xs-12">
		<h1 class="page-header">Login Page</h1>
	</div>
	<div class="col-xs-12">
		<form action="CheckLogin" class="form form-horizontal">
			<div class="form-group">
				<div class="col-xs-12 col-sm-4">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input id="uName"
							type="text" class="form-control" name="username" required>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="pass" class="col-xs-12 col-sm-4 control-label">Password</label>
				<div class="col-xs-12 col-sm-4">
					<input id="pass" type="password" class="form-control"
						name="password" required>
				</div>
			</div>
			<div class="form-group">
				<div class="col-xs-12">
					<button type="submit" class="btn btn-primary pull-right">Login</button>
				</div>
			</div>
		</form>

		<%
			String login_msg = "";
			if (request.getAttribute("error") == null) {
				login_msg = "reload";
			} else {
				login_msg = (String) request.getAttribute("error");
				out.println("<font color=red size=4px>" + login_msg + "</font>");
			}
		%>

	</div>

</body>
</html>