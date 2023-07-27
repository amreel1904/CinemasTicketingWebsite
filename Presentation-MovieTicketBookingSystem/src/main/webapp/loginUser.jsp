<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Login</title>
<link rel="stylesheet" href="css/style.css">

<script>
	function validate() {
		var email = document.form.email.value;
		var password = document.form.password.value;

		if (email == null || email == "") {
			alert("Username cannot be blank");
			return false;
		} else if (password == null || password == "") {
			alert("Password cannot be blank");
			return false;
		}
	}
</script>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="login-title">
				<h3>Login to your account</h3>
			</div>
			<div>
			<span style="color:red; font-family:Poppins; font-size: 12px;">
				<%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%>
			</span>
				<form method="post" action="Login">
					<div class="input-style">
						<div>
							<label>Email</label> <input type="text" name="email">
						</div>
						<div>
							<label>Password</label> <input type="password" name="password">
							<a href=""><span class="forgot-pw">Forgot Password</span></a>
						</div>

						<input type="submit" id="login" value="Login">
						<div class="register-link">
							<span style="text-transform: none;">Not a member?</span> <a
								href="registerUser.jsp" id="span-text"><span>Register here</span></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>