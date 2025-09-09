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
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .success-container {
            background-color: #fff;
            color: #333;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        .success-container h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #28a745; /* Green success color */
        }
        .success-container p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }
        .success-container a {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #007bff; /* Blue button color */
            color: white;
            border-radius: 5px;
            font-size: 16px;
        }
        .success-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="success-container">
        <h2>Account Deleted Successfully!</h2>
        <p>Your account has been deleted from the system.</p>
        <a href="homePage.jsp">Go back to My Account</a>
    </div>



</body>
</html>