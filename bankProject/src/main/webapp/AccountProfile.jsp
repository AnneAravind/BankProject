<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create your account</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            
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
            background-color: rgba(255, 255, 255, 0.9); 
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            position: relative; 
            z-index: 1; 
            filter: none; 
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
        input[type="password"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

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
    </style>
</head>
<body>
    <!-- Clear container for form content -->
    <div class="background"></div>
    <div class="container">
        <h2>Create Account</h2>
        <form action="registerAccount" method="post">
            <label for="name">Account Number:</label>
            <input type="text" id="name" name="accountNumber" required>
            
            <label for="email">IFSC code:</label>
            <input type="text" id="ifsc" name="IFSC" required>
            
            <label for="phone">Initial balance:</label>
            <input type="number" id="balance" name="balance" required>
            
             
            <input type="submit" value="Submit">
        </form>
    </div>

</body>
</html>
</body>
</html>