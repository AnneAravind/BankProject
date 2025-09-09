<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <style>

<style>
    /* Styling for account details */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        padding: 50px;
    }
    .balance-details {
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        display: inline-block;
        text-align: left;
    }
    .balance-details h2 {
        color: #333;
    }
    .balance-details p {
        font-size: 16px;
        color: #555;
    }
</style>
<center>
<div class="balance-details">
    <% String error = (String) request.getAttribute("error"); %>
    <% if (error != null) { %>
        <div class="error-message"><%= error %></div>
    <% } else { %>
        <h2>Account Balance</h2>
        <p>Balance: <%= request.getAttribute("balance") != null ? request.getAttribute("balance") : "Not available" %> USD</p>
        
    <% } %>
     <br>
        <a href="homePage.jsp">Go to Homepage</a> <!-- Add a link to homepage -->
</div>
</center>
</body>
</html>