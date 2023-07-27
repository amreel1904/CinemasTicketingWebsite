<!DOCTYPE html>
	<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Enumeration"%>
<html lang="en">
<%
//Get all parameter keys from the request
Enumeration<String> parameterNames = request.getParameterNames();

//Construct the query string with all parameter key-value pairs
StringBuilder queryString = new StringBuilder();
while (parameterNames.hasMoreElements()) {
	String paramName = parameterNames.nextElement();
 String paramValue = request.getParameter(paramName);
 String encodedParamValue = java.net.URLEncoder.encode(paramValue, "UTF-8");
 queryString.append(paramName).append("=").append(encodedParamValue).append("&");
}

//Remove the trailing "&" character
if (queryString.length() > 0) {
queryString.setLength(queryString.length() - 1);
}
%>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Payment Success</title>
	<link rel="stylesheet" href="css/styless.css">
</head>

<body>
	<%@include file="header/header_authenticated.jsp" %>
    <center>
    <div class="payment-success">
        <h2>Payment Success</h>
        <div style="margin: 20px 0;">
            
                <svg xmlns="http://www.w3.org/2000/svg" width="120" height="166" viewBox="0 0 167 166" fill="none">
                    <path d="M0.5 83C0.5 37.1604 37.6604 0 83.5 0C129.34 0 166.5 37.1604 166.5 83C166.5 128.84 129.34 166 83.5 166C37.6604 166 0.5 128.84 0.5 83Z" fill="#1DE782" fill-opacity="0.25"/>
                    <path d="M24.2139 83C24.2139 50.2574 50.757 23.7143 83.4996 23.7143C116.242 23.7143 142.785 50.2574 142.785 83C142.785 115.743 116.242 142.286 83.4996 142.286C50.757 142.286 24.2139 115.743 24.2139 83Z" fill="#101012"/>
                    <path d="M83.4996 23.7143C50.7739 23.7143 24.2139 50.2743 24.2139 83C24.2139 115.726 50.7739 142.286 83.4996 142.286C116.225 142.286 142.785 115.726 142.785 83C142.785 50.2743 116.225 23.7143 83.4996 23.7143ZM67.4331 108.434L46.1496 87.15C43.8374 84.8378 43.8374 81.1028 46.1496 78.7907C48.4617 76.4786 52.1967 76.4786 54.5089 78.7907L71.6424 95.865L112.431 55.0764C114.743 52.7643 118.478 52.7643 120.79 55.0764C123.102 57.3886 123.102 61.1236 120.79 63.4357L75.7924 108.434C73.5396 110.746 69.7453 110.746 67.4331 108.434Z" fill="#1DE782"/>
                </svg>
              
        </div>
        
        <div class="gp-btn">
            <a href="viewTicket.jsp?<%=queryString.toString()%>" class="viewTicket-btn">View Ticket</a>
            <a href="home.jsp" class="backHome-btn">Back to Homepage</a>
        </div>
    </div>
    </center>
</body>
</html>