<!DOCTYPE html>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%

session.setAttribute("date", LocalDate.parse(request.getParameter("date").trim().substring(0,10)).format(DateTimeFormatter.ofPattern("E, dd MMM yyyy")));
session.setAttribute("title", java.net.URLDecoder.decode(request.getParameter("title")));
session.setAttribute("seatName", request.getParameter("seatNames").substring(0,request.getParameter("seatNames").length()-1));
session.setAttribute("time", request.getParameter("time"));

%>
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
		<%@ include file="header/header_authenticated.jsp"%>
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
                            <p class="ticket-info"><%=LocalDate.parse(request.getParameter("date").trim().substring(0,10)).format(DateTimeFormatter.ofPattern("E, dd MMM yyyy"))%></p>
                        </div>
                        <div>
                            <Span class="info-label">Movie Title</Span>
                            <p class="ticket-info" style="text-transform: uppercase;"><%=java.net.URLDecoder.decode(request.getParameter("title")) %></p>
                        </div>
                        <div>
                            <table style="width: 100%;">
                                <tr>
                                    <td><Span class="info-label">Ticket</Span></td>
                                    <td><Span class="info-label" style="float: right;">Hours</Span></td>
                                </tr>
                                <tr>
                                    <td><p class="ticket-info"><%=request.getParameter("seatNames").substring(0,request.getParameter("seatNames").length()-1)%></p></td>
                                    <td><p class="ticket-info" style="float: right;"><%=request.getParameter("time") %></p></td>
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
                <a href="home.jsp" class="backHome-btn" style="width: 395px; margin-top: 100px; padding: 20px 0;"
                >Back to Homepage</a>
            </div>
        </div>
    </main>
</body>
</html>