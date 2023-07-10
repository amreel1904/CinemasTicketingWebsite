<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>View Ticket</title>
	<link rel="stylesheet" href="css/styless.css">
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
    <main style="padding: 50px;">
        <div style="margin-left: 50px;">
            <h2>Ticket Detail</h2>
        </div>
        <div class="ticket-detail">
            <div>
                <div class="input-style">
                    <div style="padding-top: 10px; width: 100%;">
                        <div>
                            <Span class="info-label">Date</Span>
                            <p class="ticket-info">Mon, 23 Oct 2023</p>
                        </div>
                        <div>
                            <Span class="info-label">Movie Title</Span>
                            <p class="ticket-info" style="text-transform: uppercase;">spiderman no way home</p>
                        </div>
                        <div>
                            <table style="width: 100%;">
                                <tr>
                                    <td><Span class="info-label">Ticket (3)</Span></td>
                                    <td><Span class="info-label" style="float: right;">Hours</Span></td>
                                </tr>
                                <tr>
                                    <td><p class="ticket-info">C8, C9, C10</p></td>
                                    <td><p class="ticket-info" style="float: right;">14:40</p></td>
                                </tr>
                            </table>
                            
                        </div>
                        <div style="width: 100%;">
                            <center><input type="button" id="proceed-btn" value="Download Ticket"></center>
                        </div>
        
                    </div>
                </div>
            </div>
            <div class="gp-btn">
                <button class="backHome-btn" style="width: 250px; margin-top: 100px; padding: 20px 0;"
                >Back to Homepage</button>
            </div>
        </div>
    </main>
</body>
</html>