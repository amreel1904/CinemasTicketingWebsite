<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>
<link href="css/orderDetail.css" rel="stylesheet">
</head>
<body>
	<div class="order-detail-container">
		<div class="booking-detail-container">
			<h1 class="booking-detail-title">Booking Detail</h1>
			<h1 class="schedule-title">Schedule</h1>
			<div>
				<h2 class="movie-title">Movie Title</h2>
				<h1 class="movie-name">Spiderman</h1>
			</div>
			<div>
				<h1 class="date-title">Date</h1>
				<h1 class="date">Mon, 23 Oct 2023</h1>
			</div>
			<div class="ticket-detail-container">
				<div class="ticket-header-title-container">
					<h1 class="ticket-title">Ticket</h1>
					<h1 class="ticket-hours-title">Hours</h1>
				</div>
				<div class="ticket-header-info-container">
					<h1 class="ticket-name">C1,C2,C3</h1>
					<h1 class="ticket-hours">14:40</h1>
				</div>

			</div>
		</div>

		<div class="transaction-detail-container">
			<h2 class="transaction-detail-header">Transaction Detail</h2>
			<div class="seat-info">
				<p class="seat-name">REGULAR SEAT</p>
				<p class="seat-price">RMXX.XX xX</p>
			</div>
			<div class="service-charge-info-container">
				<p class="service-charge-percentage">Service Charge(6%)</p>
				<p class="service-charge-amount">RMXX.XX x3</p>
			</div>
			<div class="total-container">
				<p class="total-title">Total Payment</p>
				<p class="total-payment">RMXX.XX</p>
			</div>
		</div>
		<div class="checkout-button-container">
			<a href="#" class="checkout-button">Checkout Ticket</a>
		</div>
	</div>

</body>
</html>