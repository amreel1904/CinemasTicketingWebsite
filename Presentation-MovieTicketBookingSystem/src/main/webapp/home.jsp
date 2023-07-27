<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

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
	String query = "SELECT * FROM movies";
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
<html>
<head>
<title>Movie Ticket Booking System - Main Page</title>
<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<link href="css/mainPage.css" rel="stylesheet">
</head>
<body>
	<% if (session.getAttribute("email") != null) { %>
	    <%@ include file="header/header_authenticated.jsp"%>
	<% } else { %>
	    <%@ include file="header/header_unauthenticated.jsp"%>
	<% } %>
	
	<br>
	<h1 class="main-page-title" align="center">Now Showing</h1>
	<br>
	<div class="movie-container">
		<%
		int maxColumn = 4;
		int currentIndex = 0;
		int endIndex = 0;
		int finalRow = movieNames.size() % maxColumn; //get the number of item in the last row
		
		int row = (movieNames.size() / maxColumn) + (finalRow > 0 ? 1 : 0);
		finalRow = (finalRow==0)?maxColumn:finalRow;//set final row to the default so that it will display final row
		for (int x = 0; x < row; x++) {
			endIndex = x * maxColumn + ((x==row-1)? finalRow : maxColumn);//Math.min(4, finalRow);
		%>
		<div class="movie-row">
			<%
			for (; currentIndex < endIndex; currentIndex++) {
			%>
			<div class="movie">
				<a class="movie-image-link" href="<%="movieDetail.jsp?movie_id=" + id.get(currentIndex) +"&title="+ movieNames.get(currentIndex)%>"> <img
					class="movie-image" src="<%="image/movie_image/" + id.get(currentIndex) + ".png"%>" />
				</a> 
					<a class="text-link" href="<%="movieDetail.jsp?movie_id=" + id.get(currentIndex)+"&title="+ movieNames.get(currentIndex)%>"> 
					<%=movieNames.get(currentIndex)%>
				</a>
			</div>
			<%
			}
			%>
		</div>
		<%
		}
		%>
	</div>

</body>
</html>
