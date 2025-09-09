<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Money Transfer</title>
    <style>
        body {
        width:100%;
		height:99vh;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-image:url("https://media.istockphoto.com/id/2133201346/photo/us-dollar-icons-with-world-map-and-financial-charts-at-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=nTWLydQqM1Xbyw7lMYLNWohiqzBO_oGDibf2QjhD6zw=");
            background-repeat:no-repeat;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-position:center;
            background-size:100% 100%;
            overflow:hidden;
        }
        .transfer-container {
            background-color: rgba(255, 255, 255, 0.301);
            border-radius: 8px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 400px;
            text-align: center;
            backdrop-filter:blur(10px);
        }
        .transfer-container h2 {
            color: #0052cc;
            margin-bottom: 20px;
            font-size: 24px;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
        }
        .form-group input[type="submit"] {
            background-color: #0052cc;
            color: #fff;
            border: none;
            font-weight: bold;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #004494;
        }
        .transfer-info {
            color: #666;
            font-size: 14px;
            margin-top: 20px;
        }
        p{
        color:red;
        }
    </style>
</head>
<body>
    <div class="transfer-container">
        <h2>Money Transfer</h2>
        <form action="TransferServlet" method="post">
            <div class="form-group">
                <label for="AccountNumber">Account Number:</label>
                <input type="number" name="AccountNumber" required>
            </div>
            <div class="form-group">
                <label for="type">Account Type:</label>
                <input type="text" name="type" required>
            </div>
            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="number" name="amount" required>
            </div>
            <div class="form-group">
                <label for="IFSC">IFSC Code:</label>
                <input type="text" name="IFSC" required>
            </div>
           
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Transfer">
            </div>
        </form>
        <div class="transfer-info">
            <p>Please ensure the account details are accurate before proceeding.</p>
        </div>
    </div>
</body>
</html>
