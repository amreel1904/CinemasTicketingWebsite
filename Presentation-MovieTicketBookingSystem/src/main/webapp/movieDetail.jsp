<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie Details</title>
<link rel="stylesheet" href="css/styless.css">
</head>

<body>


	<%
	if (session.getAttribute("email") != null) {
	%>
	<%@ include file="header/header_authenticated.jsp"%>
	<%
	} else {
	%>
	<%@ include file="header/header_unauthenticated.jsp"%>
	<%
	}
	%>

	<br>
	<main style="display: flex; padding: 50px;">
		<section style="width: 100%; padding-top: 0;">
			<div class="book-detail">
				<h2>Theater</h2>
				<div class="detail-section">
					<div>
						<button class="detail-loc btn selection-button">
							<span style="width: 10px; font-size: 7px; text-align: left;">
								<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22"
									viewBox="0 0 22 28" fill="none">
										<path
										d="M11 16C10.0111 16 9.0444 15.7068 8.22215 15.1574C7.39991 14.6079 6.75904 13.8271 6.3806 12.9134C6.00217 11.9998 5.90315 10.9945 6.09608 10.0246C6.289 9.05465 6.76521 8.16373 7.46447 7.46447C8.16373 6.76521 9.05465 6.289 10.0246 6.09608C10.9945 5.90315 11.9998 6.00217 12.9134 6.3806C13.8271 6.75904 14.6079 7.39991 15.1574 8.22215C15.7068 9.0444 16 10.0111 16 11C15.9984 12.3256 15.4711 13.5964 14.5338 14.5338C13.5964 15.4711 12.3256 15.9984 11 16ZM11 8C10.4067 8 9.82664 8.17595 9.33329 8.50559C8.83994 8.83524 8.45543 9.30377 8.22836 9.85195C8.0013 10.4001 7.94189 11.0033 8.05765 11.5853C8.1734 12.1672 8.45912 12.7018 8.87868 13.1213C9.29824 13.5409 9.83279 13.8266 10.4147 13.9424C10.9967 14.0581 11.5999 13.9987 12.1481 13.7716C12.6962 13.5446 13.1648 13.1601 13.4944 12.6667C13.8241 12.1734 14 11.5933 14 11C13.9992 10.2046 13.6829 9.442 13.1204 8.87956C12.558 8.31712 11.7954 8.0008 11 8Z"
										fill="white" />
										<path
										d="M11 28L2.56401 18.051C2.44679 17.9016 2.33079 17.7513 2.21601 17.6C0.774992 15.7018 -0.00348119 13.3832 1.17029e-05 11C1.17029e-05 8.08262 1.15894 5.28473 3.22184 3.22183C5.28474 1.15893 8.08263 0 11 0C13.9174 0 16.7153 1.15893 18.7782 3.22183C20.8411 5.28473 22 8.08262 22 11C22.0035 13.3821 21.2254 15.6996 19.785 17.597L19.784 17.6C19.784 17.6 19.484 17.994 19.439 18.047L11 28ZM3.81201 16.395C3.81401 16.395 4.04601 16.703 4.09901 16.769L11 24.908L17.91 16.758C17.954 16.703 18.188 16.393 18.189 16.392C19.3662 14.8411 20.0023 12.947 20 11C20 8.61305 19.0518 6.32387 17.364 4.63604C15.6761 2.94821 13.387 2 11 2C8.61306 2 6.32388 2.94821 4.63605 4.63604C2.94822 6.32387 2.00001 8.61305 2.00001 11C1.99791 12.9482 2.63479 14.8434 3.81301 16.395H3.81201Z"
										fill="white" />
									</svg>
							</span>
						IoI Putrajaya
						</button>
					</div>
					<div>
						<button class="detail-loc btn selection-button">
							<span style="width: 10px; font-size: 7px; text-align: left;">
								<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22"
									viewBox="0 0 22 28" fill="none">
										<path
										d="M11 16C10.0111 16 9.0444 15.7068 8.22215 15.1574C7.39991 14.6079 6.75904 13.8271 6.3806 12.9134C6.00217 11.9998 5.90315 10.9945 6.09608 10.0246C6.289 9.05465 6.76521 8.16373 7.46447 7.46447C8.16373 6.76521 9.05465 6.289 10.0246 6.09608C10.9945 5.90315 11.9998 6.00217 12.9134 6.3806C13.8271 6.75904 14.6079 7.39991 15.1574 8.22215C15.7068 9.0444 16 10.0111 16 11C15.9984 12.3256 15.4711 13.5964 14.5338 14.5338C13.5964 15.4711 12.3256 15.9984 11 16ZM11 8C10.4067 8 9.82664 8.17595 9.33329 8.50559C8.83994 8.83524 8.45543 9.30377 8.22836 9.85195C8.0013 10.4001 7.94189 11.0033 8.05765 11.5853C8.1734 12.1672 8.45912 12.7018 8.87868 13.1213C9.29824 13.5409 9.83279 13.8266 10.4147 13.9424C10.9967 14.0581 11.5999 13.9987 12.1481 13.7716C12.6962 13.5446 13.1648 13.1601 13.4944 12.6667C13.8241 12.1734 14 11.5933 14 11C13.9992 10.2046 13.6829 9.442 13.1204 8.87956C12.558 8.31712 11.7954 8.0008 11 8Z"
										fill="white" />
										<path
										d="M11 28L2.56401 18.051C2.44679 17.9016 2.33079 17.7513 2.21601 17.6C0.774992 15.7018 -0.00348119 13.3832 1.17029e-05 11C1.17029e-05 8.08262 1.15894 5.28473 3.22184 3.22183C5.28474 1.15893 8.08263 0 11 0C13.9174 0 16.7153 1.15893 18.7782 3.22183C20.8411 5.28473 22 8.08262 22 11C22.0035 13.3821 21.2254 15.6996 19.785 17.597L19.784 17.6C19.784 17.6 19.484 17.994 19.439 18.047L11 28ZM3.81201 16.395C3.81401 16.395 4.04601 16.703 4.09901 16.769L11 24.908L17.91 16.758C17.954 16.703 18.188 16.393 18.189 16.392C19.3662 14.8411 20.0023 12.947 20 11C20 8.61305 19.0518 6.32387 17.364 4.63604C15.6761 2.94821 13.387 2 11 2C8.61306 2 6.32388 2.94821 4.63605 4.63604C2.94822 6.32387 2.00001 8.61305 2.00001 11C1.99791 12.9482 2.63479 14.8434 3.81301 16.395H3.81201Z"
										fill="white" />
									</svg>
							</span>
						Bukit Bintang
						</button>
					</div>
					<div>
						<button class="detail-loc btn selection-button">
							<span style="width: 10px; font-size: 7px; text-align: left;">
								<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22"
									viewBox="0 0 22 28" fill="none">
										<path
										d="M11 16C10.0111 16 9.0444 15.7068 8.22215 15.1574C7.39991 14.6079 6.75904 13.8271 6.3806 12.9134C6.00217 11.9998 5.90315 10.9945 6.09608 10.0246C6.289 9.05465 6.76521 8.16373 7.46447 7.46447C8.16373 6.76521 9.05465 6.289 10.0246 6.09608C10.9945 5.90315 11.9998 6.00217 12.9134 6.3806C13.8271 6.75904 14.6079 7.39991 15.1574 8.22215C15.7068 9.0444 16 10.0111 16 11C15.9984 12.3256 15.4711 13.5964 14.5338 14.5338C13.5964 15.4711 12.3256 15.9984 11 16ZM11 8C10.4067 8 9.82664 8.17595 9.33329 8.50559C8.83994 8.83524 8.45543 9.30377 8.22836 9.85195C8.0013 10.4001 7.94189 11.0033 8.05765 11.5853C8.1734 12.1672 8.45912 12.7018 8.87868 13.1213C9.29824 13.5409 9.83279 13.8266 10.4147 13.9424C10.9967 14.0581 11.5999 13.9987 12.1481 13.7716C12.6962 13.5446 13.1648 13.1601 13.4944 12.6667C13.8241 12.1734 14 11.5933 14 11C13.9992 10.2046 13.6829 9.442 13.1204 8.87956C12.558 8.31712 11.7954 8.0008 11 8Z"
										fill="white" />
										<path
										d="M11 28L2.56401 18.051C2.44679 17.9016 2.33079 17.7513 2.21601 17.6C0.774992 15.7018 -0.00348119 13.3832 1.17029e-05 11C1.17029e-05 8.08262 1.15894 5.28473 3.22184 3.22183C5.28474 1.15893 8.08263 0 11 0C13.9174 0 16.7153 1.15893 18.7782 3.22183C20.8411 5.28473 22 8.08262 22 11C22.0035 13.3821 21.2254 15.6996 19.785 17.597L19.784 17.6C19.784 17.6 19.484 17.994 19.439 18.047L11 28ZM3.81201 16.395C3.81401 16.395 4.04601 16.703 4.09901 16.769L11 24.908L17.91 16.758C17.954 16.703 18.188 16.393 18.189 16.392C19.3662 14.8411 20.0023 12.947 20 11C20 8.61305 19.0518 6.32387 17.364 4.63604C15.6761 2.94821 13.387 2 11 2C8.61306 2 6.32388 2.94821 4.63605 4.63604C2.94822 6.32387 2.00001 8.61305 2.00001 11C1.99791 12.9482 2.63479 14.8434 3.81301 16.395H3.81201Z"
										fill="white" />
									</svg>
							</span>
						KB Mall
						</button>
					</div>
				</div>
			</div>
			<div class="book-detail">
				<h2>Date</h2>
				<div class="detail-section">
					<div class="detail-gp">
						<button class="detail-date selection-button">
							2023-07-15
							<span class="detail-day">Sat</span>
						</button>
					</div>
					<div class="detail-gp">
						<button class="detail-date selection-button">
							2023-07-18
							<span class="detail-day">Tue</span>
						</button>
					</div>
					<div class="detail-gp">
						<button class="detail-date selection-button">
							2023-07-21
							<span class="detail-day">Fri</span>
						</button>
					</div>
				</div>
			</div>
			<div class="book-detail">
				<h2>Time</h2>
				<div class="detail-section">
					<div>
						<button class="detail-time selection-button">08:00</button>
					</div>
					<div>
						<button class="detail-time selection-button">15:30</button>
					</div>
					<div>
						<button class="detail-time selection-button">20:00</button>
					</div>
				</div>
			</div>
		</section>
		<section style="width: 60%;">
			<div class="movie-details" style="float: right;">
				<%
				try {
					//Retrieve data from database
					Class.forName("com.mysql.jdbc.Driver");
					//Database punya link, username, password
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieticketdb", "root", "1234");
					//above statement ,ydb exist mysql
					Statement st = con.createStatement();
					//display all
					String str = "select * from movies where movie_id='" + request.getParameter("movie_id") + "'";
					ResultSet rs = st.executeQuery(str);
					if (rs.next()) {
				%>
				<div>
					<img alt=""
						src="<%="image/movie_image/" + rs.getInt("movie_id") + ".png"%>">
				</div>
				<div style="width: 250px; text-align: left;">
					<h3 style="text-transform: uppercase;"><%=rs.getString("title")%></h3>
					<div>
						<p><%=rs.getString("description")%></p>
					</div>
					<div style="width: 250px; float: right;">
						<table style="border: 0; width: 100%;">
							<tr>
								<td style="padding-right: 50px;">Duration</td>
								<td style="text-align: right;"><%=rs.getInt("duration") + "min"%></td>
							</tr>
							<tr>
								<td style="padding-right: 50px;">Type</td>
								<td style="text-align: right;"><%=rs.getString("genre")%></td>
							</tr>
						</table>
					</div>
				</div>
				<%
				} //end if

				} catch (Exception e) {

				}
				%>
				<div>
					<div>
						<div class="input-style">
							<div>
								<h3 class="movie-location">IOI Putrajaya</h3>
								<p id="movie-date">
									18 October 2023<span id="movie-time" style="display: block;">9.00pm</span>
								</p>
								<p style="font-size: 11px;">*Seat selection can be done
									after this</p>
								<div>
								<form action="movieSeat.jsp" method="GET">
									<input type="hidden" id="movie_id" name="movie_id" value="<%=request.getParameter("movie_id") %>">
									<input type="hidden" id="title" name="title" value="<%=request.getParameter("title")%>">
									<input type="hidden" id="location" name="location" value="0">
									<input type="hidden" id="date" name="date" value="0">
									<input type="hidden" id="time" name="time" value="">
									<input type="submit" id="proceed-btn" value="Proceed">
								</form>
									
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	<script src="javascript/movieDetail.js" defer></script>
	</main>
</body>

</html>