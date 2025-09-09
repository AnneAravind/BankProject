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
        .failure-container {
            background-color: #fff;
            color: #333;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        .failure-container h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #dc3545; /* Red color for failure heading */
        }
        .failure-container p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }
        .failure-container a {
            text-decoration: none;
            background-color: #007bff;
            color: #fff;
            padding: 12px 24px;
            border-radius: 5px;
            font-size: 16px;
        }
        .failure-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="failure-container">
        <h2>Update Failed!</h2>
        <p>We were unable to update your account details. Please try again with valid details or contact support.</p>
        <a href="homePage.jsp">Go back to My Account</a> <!-- Redirect to your main account page -->
    </div>



</body>
</html>