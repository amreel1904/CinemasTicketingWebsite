<html>

<head>
    <title>Movie Ticket Booking</title>
</head>

<body>
    <h1>Movie Ticket Booking</h1>
    <form action="bookTicket.jsp" method="post">
        <table>
            <tr>
                <td>Movie Name</td>
                <td><input type="text" name="movieName"></td>
            </tr>
            <tr>
                <td>Date</td>
                <td><input type="date" name="date"></td>
            </tr>
            <tr>
                <td>Time</td>
                <td><input type="time" name="time"></td>
            </tr>
            <tr>
                <td>Number of Tickets</td>
                <td><input type="number" name="numberOfTickets"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Book Tickets"></td>
            </tr>
        </table>
    </form>
</body>

</html>