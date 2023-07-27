<html>
<head>
<title></title>
<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<style>
.button {
	padding: 5px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	border-style: solid;
	border-width: 1px;
	width: 100px;
	padding: 15px 10px;
	justify-content: center;
	align-items: center;
	gap: 10px;
	border-radius: 10px;
	padding: 15px 10px;
	justify-content: center;
	align-items: center;
	gap: 10px;
}

.button.signup {
	font-family: Arial, Helvetica, sans-serif;
	color: white;
	background: rgba(0, 0, 0, 0.1);
	border-color: white;
}

.button.signup:hover, button.signup:focus {
	background: rgba(0, 0, 0, 0.2);
}

.button.login {
	font-family: Arial, Helvetica, sans-serif;
	color: white;
	background: #1DE782;
	border-color: #1DE782;
}

.button.login:hover, button.login:focus {
	background: #17C769;
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
	width: 127px;
	height: 49px;
	flex-shrink: 0;
}
</style>
<link href="css/mainPage.css" rel="stylesheet">
</head>
<body>
	<div id="header" class="header">
		<img class="header-logo" src="image/duaAsset 1logo.png">
		<div class="button-container">
			<a href="loginUser.jsp" class="button login">Login</a> 
			<a href="registerUser.jsp" class="button signup">Register</a>
		</div>
	</div>
</body>
</html>
