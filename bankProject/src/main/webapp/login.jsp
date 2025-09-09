<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Login Page</title>
<style>
*{
margin:0px;
padding:0px;
}
  body {
    margin: 0;
    font-family: Arial, sans-serif;
     overflow:hidden;
  }
  .background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url('https://png.pngtree.com/thumb_back/fh260/background/20230702/pngtree-3d-internet-login-page-illustration-with-user-and-password-fields-image_3740978.jpg') no-repeat center center fixed;
    background-size: cover;
    z-index: -1;
  }
  .container {
    background-color:  rgba(255, 255, 255, 0.301); /* Set to a lower opacity */
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    width: 400px;
    margin: 8% auto;
    position: relative;
    z-index: 1;
    backdrop-filter:blur(10px);
  }
  .title {
    text-align: center;
    color: #333;
    font-size: 24px;
    font-weight: bold;
    color: red;
    margin-bottom: 20px;
  }
  label {
    display: block;
    margin: 10px 0 5px;
    font-weight: bold;
    color: white;
  }
  input[type="email"],
  input[type="password"] {
    width: 100%;
    padding: 8px;
    border-radius: 5px;
    border: 1px solid #ddd;
    font-size: 14px;
    margin-bottom: 15px;
  }
  .one {
    margin-top: 15px;
    width: 100%;
    height: 40px;
    font-weight: bold;
    background: linear-gradient(45deg, rgb(16, 137, 211) 0%, rgb(18, 177, 209) 100%);
    color: white;
    border-radius: 20px;
    border: none;
    cursor: pointer;
    transition: all 0.2s ease-in-out;
  }
  .one:hover {
    transform: scale(1.05);
    box-shadow: rgba(133, 189, 215, 0.878) 0px 20px 10px -15px;
  }
  .forgot-password, .signup {
    display: block;
    text-align: center;
    font-size: 16px;
    color: white;
    margin-top: 10px;
  }
  .error-message {
    text-align: center;
    color: white;
    font-weight: bold;
    font-size:30px;
  }
</style>
</head>
<body>
<div class="background"></div>
<% 
  String s = (String) request.getAttribute("msg");
  if (s != null) { 
%>
  <div class="error-message"><%= s %></div>
<% } %>

<div class="container">
  <h1 class="title">LOGIN PAGE</h1>
  <form action="enter" method="post">
    <label>Enter Your Email:</label>
    <input type="email" name="email" required>

    <label>Enter Your Password:</label>
    <input type="password" name="password" required>

    <span class="forgot-password"><a href="forgotPassword.jsp">Forgot Password?</a></span>
    <input class="one" type="submit" value="Login">

    <span class="signup">Don't have an account? <a href="register.jsp">Sign up</a></span>
  </form>
</div>
</body>
</html>
