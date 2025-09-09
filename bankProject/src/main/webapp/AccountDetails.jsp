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
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .account-container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }
        .account-container h2 {
            color: #0052cc;
        }
        .account-container p {
            font-size: 16px;
            color: #333;
        }
        .back-link {
            margin-top: 20px;
            display: inline-block;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
        }
        .back-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="account-container">
    <h2>Account Details</h2>
    <p><strong>Account Number:</strong> ${accountNumber}</p>
    <p><strong>Account Holder Name:</strong> ${accountHolderName}</p>
    <p><strong>Balance:</strong> $${balance}</p>
    <p><strong>Email:</strong> ${email}</p>
    <a href="homePage.jsp" class="back-link">Back to Home</a>
</div>


</body>
</html>