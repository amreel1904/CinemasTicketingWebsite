<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Ticket</title>
<link href="css/myTicket.css" rel="stylesheet">
<script src="javascript/myTicket.js" defer></script>
</head>
<body>
	<%@ include file="header/header_authenticated.jsp"%>
	<div class="tab-button-container">
		<button class="tab-button active" onclick="toggleTab('upcoming')">Upcoming</button>
		<button class="tab-button not-active" onclick="toggleTab('history')">History</button>
	</div>
	<div class="center-content">
		<div id="upcoming" class="tab-content" style="display: grid;">
			<!-- Content for Tab 1 -->
			<div class="tab-item-container">
				<div class="grouped-info-container">
					<h2 class="small-title">Date</h2>
					<p class="big-info">Mon, 23 October 2023</p>
				</div>
				<div class="grouped-info-container">
					<h2 class="small-title">Movie Title</h2>
					<p class="big-info">SPIDERMAN NO WAY HOME</p>
				</div>
				<div class="grouped-info-container">
					<div class="grouped-row-container">
						<h2 class="small-title">Ticket</h2>
						<h2 class="small-title">Hours</h2>
					</div>
					<div class="grouped-row-container">
						<p class="big-info">C1,C2,C3</p>
						<p class="big-info">14:40</p>
					</div>
				</div>
				<div class="download-ticket-button-container">
					<button class="download-ticket-button">Download Ticket</button>
				</div>
			</div>
			<div class="tab-item-container">
				<div class="grouped-info-container">
					<h2 class="small-title">Date</h2>
					<p class="big-info">Mon, 23 October 2023</p>
				</div>
				<div class="grouped-info-container">
					<h2 class="small-title">Movie Title</h2>
					<p class="big-info">SPIDERMAN NO WAY HOME</p>
				</div>
				<div class="grouped-info-container">
					<div class="grouped-row-container">
						<h2 class="small-title">Ticket</h2>
						<h2 class="small-title">Hours</h2>
					</div>
					<div class="grouped-row-container">
						<p class="big-info">C1,C2,C3</p>
						<p class="big-info">14:40</p>
					</div>
				</div>
				<div class="download-ticket-button-container">
					<button class="download-ticket-button">Download Ticket</button>
				</div>
			</div>
			<div class="tab-item-container">
				<div class="grouped-info-container">
					<h2 class="small-title">Date</h2>
					<p class="big-info">Mon, 23 October 2023</p>
				</div>
				<div class="grouped-info-container">
					<h2 class="small-title">Movie Title</h2>
					<p class="big-info">SPIDERMAN NO WAY HOME</p>
				</div>
				<div class="grouped-info-container">
					<div class="grouped-row-container">
						<h2 class="small-title">Ticket</h2>
						<h2 class="small-title">Hours</h2>
					</div>
					<div class="grouped-row-container">
						<p class="big-info">C1,C2,C3</p>
						<p class="big-info">14:40</p>
					</div>
				</div>
				<div class="download-ticket-button-container">
					<button class="download-ticket-button">Download Ticket</button>
				</div>
			</div>
			<div class="tab-item-container">
				<div class="grouped-info-container">
					<h2 class="small-title">Date</h2>
					<p class="big-info">Mon, 23 October 2023</p>
				</div>
				<div class="grouped-info-container">
					<h2 class="small-title">Movie Title</h2>
					<p class="big-info">SPIDERMAN NO WAY HOME</p>
				</div>
				<div class="grouped-info-container">
					<div class="grouped-row-container">
						<h2 class="small-title">Ticket</h2>
						<h2 class="small-title">Hours</h2>
					</div>
					<div class="grouped-row-container">
						<p class="big-info">C1,C2,C3</p>
						<p class="big-info">14:40</p>
					</div>
				</div>
				<div class="download-ticket-button-container">
					<button class="download-ticket-button">Download Ticket</button>
				</div>
			</div>
			<div class="tab-item-container">
				<div class="grouped-info-container">
					<h2 class="small-title">Date</h2>
					<p class="big-info">Mon, 1 January 1</p>
				</div>
				<div class="grouped-info-container">
					<h2 class="small-title">Movie Title</h2>
					<p class="big-info">SPOODER MAN</p>
				</div>
				<div class="grouped-info-container">
					<div class="grouped-row-container">
						<h2 class="small-title">Ticket</h2>
						<h2 class="small-title">Hours</h2>
					</div>
					<div class="grouped-row-container">
						<p class="big-info">C1,C2,C3</p>
						<p class="big-info">14:40</p>
					</div>
				</div>
				<div class="download-ticket-button-container">
					<button class="download-ticket-button">Download Ticket</button>
				</div>
			</div>


		</div>
		<div id="history" class="tab-content">
			<!-- Content for Tab 2 -->
			<div class="tab-item-container">
				<div class="grouped-info-container">
					<h2 class="small-title">Date</h2>
					<p class="big-info">Mon, 1 January 0001</p>
				</div>
				<div class="grouped-info-container">
					<h2 class="small-title">Movie Title</h2>
					<p class="big-info">SPOODER MAN</p>
				</div>
				<div class="grouped-info-container">
					<div class="grouped-row-container">
						<h2 class="small-title">Ticket</h2>
						<h2 class="small-title">Hours</h2>
					</div>
					<div class="grouped-row-container">
						<p class="big-info">C1,C2,C3</p>
						<p class="big-info">14:40</p>
					</div>
				</div>
				<div class="download-ticket-button-container">
					<button class="download-ticket-button deactivated">Download Ticket</button>
				</div>
			</div>
			<div class="tab-item-container">
				<div class="grouped-info-container">
					<h2 class="small-title">Date</h2>
					<p class="big-info">Mon, 1 January 0001</p>
				</div>
				<div class="grouped-info-container">
					<h2 class="small-title">Movie Title</h2>
					<p class="big-info">SPOODER MAN</p>
				</div>
				<div class="grouped-info-container">
					<div class="grouped-row-container">
						<h2 class="small-title">Ticket</h2>
						<h2 class="small-title">Hours</h2>
					</div>
					<div class="grouped-row-container">
						<p class="big-info">C1,C2,C3</p>
						<p class="big-info">14:40</p>
					</div>
				</div>
				<div class="download-ticket-button-container">
					<button class="download-ticket-button deactivated">Download Ticket</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>