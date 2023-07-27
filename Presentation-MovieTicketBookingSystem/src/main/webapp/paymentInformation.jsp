<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Random"%>

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
	Random random = new Random();
    int randomNumber = random.nextInt(9000) + 1000;
	String query = "INSERT INTO otp (otp_num) VALUES (?)";
	PreparedStatement statement = connection.prepareStatement(query);
	statement.setInt(1, randomNumber);
	statement.executeUpdate();
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
<title>Payment Information</title>
<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<link href="css/paymentInformation.css" rel="stylesheet">
<script src="javascript/paymentInformation.js" type="text/javascript" defer></script>
</head>
<body>
	<div class="main-container">
		<div>
			<h1 class="otp-title">Enter OTP</h1>
		</div>
		<form action="paymentSuccess.jsp" method="GET">
			<div class="text-boxes-container">
				<input type="hidden" id="movie_id" name="movie_id" value="<%=request.getParameter("movie_id") %>">
				<input type="hidden" id="title" name="title" value="<%=request.getParameter("title")%>">
				<input type="hidden" id="selectedName" name="seatNames" value="<%=request.getParameter("seatNames") %>">
				<input type="hidden" id="time" name="time" value="<%=request.getParameter("time") %>">
				<input type="hidden" id="date" name="date" value="<%=request.getParameter("date") %>">
				<input id="firstNum" type="number" name="one" class="number-input" maxlength="1" required>
				<input id="secondNum" type="number" name="two" class="number-input" maxlength="1" required>
				<input id="thirdNum" type="number" name="three" class="number-input" maxlength="1" required>
				<input id="fourthNum" type="number" name="four" class="number-input" maxlength="1" required>
			</div>
			<div class="payment-submit-button-container">
				<button class="payment-submit-button" type="submit">Submit</button>
			</div>
		</form>	
	</div>
</body>
</html>