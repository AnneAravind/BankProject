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
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
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
        
        
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        
       
    </style>
</head>
<body>
<%String s=(String)request.getAttribute("msg");
	if(s!=null)
    out.print(s);
%>
<div class="background"></div>
    <div class="container">
        <h2>Delete Account</h2>
       <div class="button-group">
        <form action="deleteAcc" method="post">
            <input type="hidden" name="email" value="${email}">
            <button type="submit" class="yes-button" href="login.jsp">Yes, Delete </button>
        </form>
        
    </div>
    </div>

</body>
</html>