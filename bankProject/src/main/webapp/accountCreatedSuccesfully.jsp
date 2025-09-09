<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Created Successfully</title>
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
            color: #28a745; /* Green color for success heading */
        }
        .success-container p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }
        .success-container a {
            text-decoration: none;
            background-color: #007bff;
            color: #fff;
            padding: 12px 24px;
            border-radius: 5px;
            font-size: 16px;
        }
        .success-container a:hover {
            background-color: #0056b3;
        }
    </style>

    <div class="success-container">
        <h2>Account Created Successfully!</h2>
        <p>Your new account has been created successfully. Welcome aboard!</p>
        <a href="homePage.jsp">Go to Home</a> <!-- Redirect to the home page -->
    </div>

</body>
</html>
