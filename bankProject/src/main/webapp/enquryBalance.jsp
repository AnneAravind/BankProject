<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Balance Enquiry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #4e54c8;
        }
        
        form {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        
        p span {
            font-weight: bold;
        }
        
        .error-msg {
            color: red;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <h2> Balance Enquiry Here</h2>
    <form action="balance" method="post">
        <p>Your account balance is: <span>${balance}</span></p>
        <p class="error-msg">${msg}</p>
         <br>
        <a href="homePage.jsp">Go to Homepage</a>
    </form>
</body>
</html>