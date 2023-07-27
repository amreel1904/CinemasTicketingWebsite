<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.util.Enumeration"%>
<%
DecimalFormat df = new DecimalFormat("0.00");
float totalPrice = Float.parseFloat(request.getParameter("totalPrice"));
String[] seatNames = request.getParameter("seatNames").split(",");
// Get all parameter keys from the request
Enumeration<String> parameterNames = request.getParameterNames();

// Construct the query string with all parameter key-value pairs
StringBuilder queryString = new StringBuilder();
while (parameterNames.hasMoreElements()) {
	String paramName = parameterNames.nextElement();
    String paramValue = request.getParameter(paramName);
    String encodedParamValue = java.net.URLEncoder.encode(paramValue, "UTF-8");
    queryString.append(paramName).append("=").append(encodedParamValue).append("&");
}

// Remove the trailing "&" character
if (queryString.length() > 0) {
  queryString.setLength(queryString.length() - 1);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>
<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<link href="css/orderDetail.css" rel="stylesheet">
</head>
<body>
	<div class="order-detail-container">
		<div class="booking-detail-container">
			<h1 class="booking-detail-title">Booking Detail</h1>
			<h1 class="schedule-title">Schedule</h1>
			<div>
				<h2 class="movie-title">Movie Title</h2>
				<h1 class="movie-name"><%=java.net.URLDecoder.decode(request.getParameter("title")) %></h1>
			</div>
			<div>
				<h1 class="date-title">Date</h1>
				<h1 class="date"><%=LocalDate.parse(request.getParameter("date").trim().substring(0,10)).format(DateTimeFormatter.ofPattern("E, dd MMM yyyy"))%></h1>
			</div>
			<div class="ticket-detail-container">
				<div class="ticket-header-title-container">
					<h1 class="ticket-title">Ticket</h1>
					<h1 class="ticket-hours-title">Hours</h1>
				</div>
				<div class="ticket-header-info-container">
					<h1 class="ticket-name"><%=request.getParameter("seatNames").substring(0,request.getParameter("seatNames").length()-1)%></h1>
					<h1 class="ticket-hours"><%=request.getParameter("time") %></h1>
				</div>

			</div>
		</div>

		<div class="transaction-detail-container">
			<h2 class="transaction-detail-header">Transaction Detail</h2>
			<div class="seat-info">
				<p class="seat-name">REGULAR SEAT</p>
				<p class="seat-price"><%="RM"+df.format(totalPrice)+" x"+ seatNames.length %></p>
			</div>
			<div class="service-charge-info-container">
				<p class="service-charge-percentage">Service Charge(6%)</p>
				<p class="service-charge-amount"><%="RM"+df.format(totalPrice*0.06)+" x"+ seatNames.length %></p>
			</div>
			<div class="total-container">
				<p class="total-title">Total Payment</p>
				<p class="total-payment"><%="RM"+df.format(totalPrice+totalPrice*0.06) %></p>
			</div>
		</div>
		<div class="checkout-button-container">
			<a href="paymentInformation.jsp?<%= queryString.toString() %>" class="checkout-button">Checkout Ticket</a>
		</div>
	</div>

</body>
</html>