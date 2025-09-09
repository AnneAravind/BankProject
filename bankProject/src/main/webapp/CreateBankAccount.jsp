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
        width:100%;
		height:99vh;
        font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background-image:url(https://t4.ftcdn.net/jpg/08/58/71/61/240_F_858716147_oKVLxRhWVHXNNls1Q5GFqMEV452QHAfI.jpg);
            display: flex;
           background-repeat:no-repeat;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-position:center;
		background-size:110% 110%;
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
         overflow:hidden;
        }
        .account-container {
            background-color: rgba(255, 255, 255, 0.301);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
            backdrop-filter:blur(10px);
        }
        .account-container h2 {
            color: #0052cc;
        }
        .account-container input {
            margin: 10px 0;
            padding: 10px;
            width: 90%;
            border: 1px solid #ccc;
            border-radius: 15px;
            
        }
        .button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 15px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="account-container">
    <h2>Create Bank Account</h2>
    <form action="CreateAccount" method="post">
        <input type="text" name="accountHolderName" placeholder="Account Holder Name" required>
        <input type="number" name="AccountNumber" placeholder="Account Number" required>
         <input type="text" name="email" placeholder="Email" required>
        <input type="number" name="phone" placeholder="phone" required>
        <input type="number" name="initialBalance" placeholder="Initial Balance" required>
        <input type="text" name="AccountType" placeholder="Account type" required>
        <input type="text" name="Address" placeholder="Address" required>
        <button type="submit" class="button">Create Account</button>
    </form>
</div>


</body>
</html>