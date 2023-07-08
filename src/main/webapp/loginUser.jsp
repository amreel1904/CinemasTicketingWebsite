<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="login-title">
				<h3>Login to your account</h3>
			</div>
			<div>
				<form action="">
					<div class="input-style">
						<div>
							<label>Email</label>
							<input type="text" name="u_email" >
						</div>
						<div>
							<label>Password</label>
							<input type="password" name="u_pass" >
							<a href=""><span class="forgot-pw">Forgot Password</span></a>
						</div>
						
						<input type="button" id="login" value="Login">
						<div class="register-link">
							<span style="text-transform: none;">Not a member?</span>
							<a href=""  id="span-text"><span>Register here</span></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>