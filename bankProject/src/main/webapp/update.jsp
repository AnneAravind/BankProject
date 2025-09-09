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
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
       
        }
         .background{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('bckground.jpeg') no-repeat center center fixed;
            background-size: cover;
            filter: blur(8px);
            z-index: -1
            }
        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Slight transparency */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
            z-index: 1;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #666;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="number"] 
        {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .gender-container {
        margin-bottom: 20px;}
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: #28a745;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #218838;
        }
        input[type="radio"]{
         width: 100%;
            padding: 10px;
            background: #28a745;
            border: none;
            border-radius: 4px;
            
            
            
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <div class="container">
        <h2>Update Details</h2>
        <form action="update" method="post">
            <label for="accountholderName">Name:</label>
            <input type="text" id="accountholderName" name="accountholderName" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="phone">phone Number:</label>
            <input type="number" id="phone" name="phone" required>
            
            
             <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>
            
    
            
            <input type="submit" value="Update">
        </form>
    </div>

</body>
</html>