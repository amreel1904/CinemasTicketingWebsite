<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Information</title>
<link href="css/paymentInformation.css" rel="stylesheet">
<script src="javascript/paymentInformation.js" type="text/javascript" defer></script>
</head>
<body>
	<div class="main-container">
		<div>
			<h1 class="otp-title">Enter OTP</h1>
		</div>
		<form>
			<div class="text-boxes-container">
				<input id="firstNum" type="number" class="number-input" maxlength="1" required>
				<input id="secondNum" type="number" class="number-input" maxlength="1" required>
				<input id="thirdNum" type="number" class="number-input" maxlength="1" required>
				<input id="fourthNum" type="number" class="number-input" maxlength="1" required>
			</div>
			<div class="payment-submit-button-container">
				<button class="payment-submit-button" type="submit">Submit</button>
			</div>
		</form>	
	</div>
</body>
</html>