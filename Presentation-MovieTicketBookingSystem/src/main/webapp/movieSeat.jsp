<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Enumeration"%>

<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/movieticketdb";
String username = "root";
String password = "1234";
List<Integer> id = new ArrayList<>();
List<String> movieNames = new ArrayList<>();
List<String> imageNames = new ArrayList<>();

try {
	Connection connection = DriverManager.getConnection(url, username, password);
	Statement statement = connection.createStatement();
	String query = "SELECT * FROM seats";
	ResultSet resultSet = statement.executeQuery(query);

	while (resultSet.next()) {
		id.add(resultSet.getInt("movie_id"));
		movieNames.add(resultSet.getString("title"));
	}

	resultSet.close();
	statement.close();
	connection.close();
} catch (SQLException e) {
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seat</title>
<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
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
				<button class="clear-button" onclick="buttonClearAll()" role="button">X</button>
			</div>

		</div>
	</div>
	<div class="footer-container">
		<div class="detail-container">
			<p class="detail-title">Price</p>
			<p id="total-price" class="detail">RM0.00</p>
		</div>
		<div class="detail-container">
			<p class="detail-title">Seat</p>
			<p id="seat-names" class="detail">None</p>
		</div>
		<div class="button-container">
			<a href="movieDetail.jsp" class="back-button">Back</a>
			<form id="myForm" action="orderDetail.jsp" method="GET">
				<!-- Buttons with values -->
				<input type="hidden" id="title" name="title" value=<%=java.net.URLEncoder.encode(request.getParameter("title"), "UTF-8") %>>
				<input type="hidden" id="price" name="totalPrice" value="0">
				<input type="hidden" id="time" name="time" value="<%=request.getParameter("time") %>">
				<input type="hidden" id="date" name="date" value="<%=request.getParameter("date") %>">
				<input type="hidden" id="selectedSeat" name="seatNumber" value="0">
				<input type="hidden" id="selectedName" name="seatNames" value="">
				<!-- Submit button -->
				<button type="submit" class="proceed-payment-button">Proceed Payment</button>
			</form>
		</div>
	</div>
</body>
</html>