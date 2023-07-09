<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Movie Details</title>
	<link rel="stylesheet" href="styless.css">
</head>

<body>
	<header>
		<nav>
			<ul>
				<li><a href="#home"><img src="img/logo.png" alt=""></a></li>
				<li style="float: right;"><a href="#about"><button id="logout-btn">Logout</button></a></li>
			</ul>
		</nav>
	</header>
	<main style="display: flex; padding: 50px;">
			<section style="width: 100%; padding-top: 0;">
				<div class="book-detail">
					<h2>Theater</h2>
					<div class="detail-section">
						<div>
							<button class="detail-loc">Bukit Bintang</button>
						</div>
						<div>
							<button class="detail-loc">IoI Putrajaya</button>
						</div>
						<div>
							<button class="detail-loc">KB Mall</button>
						</div>
					</div>
				</div>
				<div class="book-detail">
					<h2>Date</h2>
					<div class="detail-section">
						<div class="detail-gp">
							<button class="detail-date">22 Oct<span class="detail-day">Mon</span></button>
						</div>
						<div class="detail-gp">
							<button class="detail-date">22 Oct<span class="detail-day">Mon</span></button>
						</div>
						<div class="detail-gp">
							<button class="detail-date">22 Oct<span class="detail-day">Mon</span></button>
						</div>
						<div class="detail-gp">
							<button class="detail-date">22 Oct<span class="detail-day">Mon</span></button>

						</div>
					</div>
				</div>
				<div class="book-detail">
					<h2>Time</h2>
					<div class="detail-section">
						<div>
							<button class="detail-time">11.00 a.m</button>
						</div>
						<div>
							<button class="detail-time">2.00 p.m</button>
						</div>
						<div>
							<button class="detail-time">5.00 p.m</button>
						</div>
						<div>
							<button class="detail-time">9.00 p.m</button>
						</div>
					</div>
				</div>
			</section>
			<section style="width: 60%;">
				<div class="movie-details" style="float: right;">
					<div>
						<img alt="" src="img/movie1.png">
					</div>
					<div style="width: 250px; text-align: left;">
						<h3>SPIDERMAN ACROSS THE SPIDERVERSE</h3>
						<div>
							<p>Movie descriptions here...</p>
						</div>
						<div style="width: 250px; float: right;">
							<table style="border: 0; width: 100%;">
								<tr>
									<td style="padding-right: 50px;">Duration</td>
									<td style="text-align: right;">2h 30m</td>
								</tr>
								<tr>
									<td style="padding-right: 50px;">Type</td>
									<td style="text-align: right;">Cartoon</td>
								</tr>
							</table>
						</div>
					</div>
					<div>
						<div>
							<div class="input-style">
								<div>
									<h3>IOI Putrajaya</h3>
									<p>18 October 2023<span style="display: block;">9.00pm</span></p>
									<p style="font-size: 11px;">*Seat selection can be done after this</p>
									<div>
										<center><input type="button" id="proceed-btn" value="Proceed"></center>
									</div>
					
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

	</main>
</body>

</html>