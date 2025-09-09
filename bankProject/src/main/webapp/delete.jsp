<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
        .confirmation-box {
            background-color: white;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            width: 300px;
            text-align: center;
        }
        .confirmation-box h2 {
            color: #d9534f;
        }
        .confirmation-box p {
            font-size: 16px;
        }
        .button-group {
            margin-top: 20px;
        }
        .button-group button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
            font-size: 14px;
        }
        .yes-button {
            background-color: #d9534f;
            color: white;
        }
        .no-button {
            background-color: #5bc0de;
            color: white;
        }
    </style>
</head>
<body>

<div class="confirmation-box">
    <h2>Are you sure?</h2>
    <p>Do you really want to delete your account? This process cannot be undone.</p>
    
    <div class="button-group">
        <form action="delete" method="post">
            <input type="hidden" name="email" value="${email}">
            <button type="submit" class="yes-button">Yes, Delete</button>
        </form>
        <form action="home" method="post">
            <button type="submit" class="no-button">No, Go Back</button>
        </form>
    </div>
</div>

</body>
</html>