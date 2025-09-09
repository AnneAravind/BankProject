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
        .error-container {
            background-color: #fff;
            color: #333;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        .error-container h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #dc3545; /* Red error color */
        }
        .error-container p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }
        .error-container a {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #007bff; /* Blue button color */
            color: white;
            border-radius: 5px;
            font-size: 16px;
        }
        .error-container a:hover {
            background-color: #0056b3;
        }
        .error-container .retry {
            margin-right: 15px;
        }
    </style>
</head>
<body>

    <div class="error-container">
        <h2>Failed to Delete Account</h2>
        <p>There was an error while trying to delete your account. Please try again with valid details contact support if the issue persists.</p>
        <a href="delete.jsp" class="retry">Try Again</a>
        <a href="homePage.jsp">Go Back to My Account</a>
    </div>

</body>
</html>