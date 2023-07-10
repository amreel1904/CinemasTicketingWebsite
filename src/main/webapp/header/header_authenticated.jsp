<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>header</title>
<style>
.button {
	padding: 5px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	border-width: 1px;
	padding: 15px 10px;
}

.button.logout {
	font-family: Arial, Helvetica, sans-serif;
	border-radius: 10px;
	color: white;
	background: red;
	border-color: red;
	border-style: solid;
	width: 100px;
	padding: 15px 10px;
	justify-content: center;
	align-items: center;
	gap: 10px;
}

.button.my-ticket {
	font-family: sans-serif;
	color: #FFF;
	font-size: 18px;
	font-style: normal;
	font-weight: 500;
	line-height: 100%;
	border: none;
	width: 85px;
	justify-content: center;
	align-self: stretch;
	border-bottom: 3px solid var(--primary, #1DE782);
}

.button-container {
	margin-left: auto;
	display: flex;
	gap: 15px;
}

.header {
	display: flex;
	padding: 18px 32px;
	justify-content: center;
	align-items: center;
}

.header-logo {
	margin-right: auto;
}
</style>
</head>
<body>
	<div id="header" class="header">
		<img class="header-logo" src="image/smallLogo.png">
		<div class="button-container">
			<a href="#" class="button my-ticket">My Ticket</a> <a
				href="movieSeat.jsp" class="button logout">Logout</a>
		</div>
	</div>
</body>
</html>