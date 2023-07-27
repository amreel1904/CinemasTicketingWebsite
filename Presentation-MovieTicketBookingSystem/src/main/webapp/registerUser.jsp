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
	<div class="container" style="margin: 0 0 0 60.5%;">
		<div class="card" style="height: 100vh; border-radius: 0; width: 155%; padding: 15px;">
			<div class="login-title">
				<h3>Create an account</h3>
			</div>
			<div>
				<form action="Register" method="post">
					<div class="input-style">
						<div>
							<label>Name</label>
							<input type="text" name="name" >
						</div>
						<div>
							<label>Email</label>
							<input type="text" name="email" >
						</div>
						<div>
							<label>Password</label>
							<input type="password" name="password" >
						</div>
						
						<input type="submit" id="login" value="Create account">
						<div class="register-link">
							<span style="text-transform: none;">Already have account?</span>
							<a href="loginUser.jsp" id="span-text" ><span >Log In</span></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>