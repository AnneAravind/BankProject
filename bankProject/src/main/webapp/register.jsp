<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-image:url(https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&w=600);
background-repeat:no-repeat;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-position:center;
            background-size:100% 100%;
            overflow:hidden;          
}
label{
font-size:20px;
color:black;
}
#one{
 backdrop-filter:blur(10px);
}
</style>
</head>
<body>

         <div id=one style=" padding-left:10%;margin-top:5%;font-weight:bold; margin-left:30%;width:400px;border : 2px solid black;border-radius:7px 7px 7px 7px">
		<h1 style="color:red;">Registration Form</h1>
<form action="register" method="post">	
		<label>Enter Your Name : <input type="text" name="accountholderName"></label><br><br>
		<label>Enter Your Email : <input type="email" name="email"></label><br><br>
		<label>Enter Your phone : <input type="number" name="phone"></label><br><br>
		<label>Enter Your age : <input type="number" name="age"></label><br><br>
		<label>Enter Your Gender : <input type="radio" value="male" name="gender"><label>Male</label>
		<input type="radio" value="female" name="gender"></label><label>Female</label><br><br>
		<label>Enter Your password : <input type="password" name="password"></label><br><br>
		<label>Enter Your address : <input type="text" name="address"></label><br><br>
		<input type="Submit" value="SignUp" name="value1" style="margin-left:30%;margin-bottom:4%;width:80px;height:40px">
		</div>
</form>
</body>
</html>