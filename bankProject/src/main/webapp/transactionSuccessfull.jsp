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
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .message-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            width: 400px;
        }
        .message-container h2 {
            color: #28a745; /* Success green */
            margin-bottom: 10px;
            font-size: 24px;
        }
        .message-container p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }
        .message-container a {
            text-decoration: none;
            background-color: #0052cc;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            font-weight: bold;
        }
        .message-container a:hover {
            background-color: #004494;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h2>Transaction Successful!</h2>
        <p>Your transaction has been processed successfully.</p>
        <a href="homePage.jsp">Go back to My Account</a>
    </div>
</body>
</html>

</body>
</html>