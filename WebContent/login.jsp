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
<body>
	<h1 class="page-header">Login Page</h1>
	<div class="text-center">
		<form class="text-center" action="CheckLogin" method="post">
			<input class="form-control col-md-4" type="text" name="username"
				placeholder="Enter Your User Name" required> <input
				class="form-control col-md-4" type="password" name="password"
				placeholder="Enter Your Password" required> <input
				class="btn btn-primary" type="submit" value="login">
		</form>
		<%
			String login_msg = "";
			if (request.getAttribute("error") == null) {
				login_msg = "reload";
			} else {
				login_msg=(String)request.getAttribute("error");
				out.println("<font color=red size=4px>" + login_msg + "</font>");
			}
		%>

	</div>

</body>
</html>