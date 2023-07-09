<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container" style="margin: 0 0 0 53%;">
		<div class="card" style="height: 100vh; border-radius: 0; width: 155%; padding: 15px;">
			<div class="login-title">
				<h3>Create an account</h3>
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
						</div>
						<div>
							<label>Confirm Password</label>
							<input type="password" name="conf_pass">
						</div>
						
						<input type="button" id="login" value="Create account">
						<div class="register-link">
							<span style="text-transform: none;">Already have account?</span>
							<a href="" id="span-text" ><span >Log In</span></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>