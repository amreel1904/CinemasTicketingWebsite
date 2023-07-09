<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie Ticket Booking System - Seat</title>
<script src="javascript/seatProcessing.js" defer></script>
<script src="javascript/createSeatTable.js" defer></script>

<link href="css/movieSeat.css" rel="stylesheet">
</head>
<body>
	<h1 class="title-movie-seat-page">Seat</h1>
	<div class="center-table">
		<div class="table-container">
			<table id="seats-table">
				<!-- <tbody>
	      <tr>
	        <td><button class="seat-button" role="button">A1</button></td>
	        <td><button class="seat-button" role="button">A2</button></td>
	      </tr>
	      <tr>
	        <td><button class="seat-button" role="button">B1</button></td>
	        <td><button class="seat-button" role="button">B2</button></td>
	      </tr>
	    </tbody> -->
			</table>
			<div class="clear-button-container">
				<button class="seat-button clear-button" role="button">X</button>
			</div>

		</div>
	</div>
	<div class="footer-container">
		<div class="detail-container">
			<p class="detail-title">Price</p>
			<p class="detail">RM.2f</p>
		</div>
		<div class="detail-container">
			<p class="detail-title">Seat</p>
			<p class="detail">seat number</p>
		</div>
		<div class="button-container">
			<button class="back-button">Back</button>
			<form id="myForm" action="orderDetail.jsp" method="POST">
				<!-- Buttons with values -->
				<input type="hidden" id="selectedValue" name="selectedValue">

				<!-- Submit button -->
				
			</form>
			<button class="proceed-payment-button">Proceed Payment</button>
			
		</div>
	</div>
</body>
</html>