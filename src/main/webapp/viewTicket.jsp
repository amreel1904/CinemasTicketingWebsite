<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Ticket</title>
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
    <main style="padding: 50px 100px;">
        <div style="margin-bottom: 50px;"> 
            <h2>Ticket Detail</h2>
        </div>
        <div class="ticket-detail">
            <center>
            <div class="input-style" style="width: fit-content; text-align: left; padding-top: 10px;">
                <div>
                    <div >
                        <span class="info-label">Date</span>
                        <p class="ticket-info">Mon, 23 Oct 2023</p>
                    </div>
                    <div>
                        <span class="info-label">Movie Title</span>
                        <p class="ticket-info" style="text-transform: uppercase;">spiderman no way home</p>
                    </div>
                    <div>
                        <table style="width: 100%;">
                            <tr>
                                <td><span class="info-label">Ticket (3)</span></td>
                                <td style="float: right;"><span class="info-label">Hours</span></td>
                            </tr>
                            <tr>
                                <td><p class="ticket-info">C5, C9, C10</p></td>
                                <td style="float: right;"><p class="ticket-info">14:40</p></td>
                            </tr>
                        </table>     
                    </div>
                    <div>
                        <center><input type="button" id="proceed-btn" value="Download Ticket"></center>
                    </div>

                </div>
            </div>
            <div class="gp-btn" style="margin-top: 100px;">
                <button class="backHome-btn" style="width: 230px; padding: 12px 0;">Back to Homepage</button>
            </div>
            </center>
        </div>
    </main>

</body>

</html>