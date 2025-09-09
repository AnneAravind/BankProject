<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  .one{
                 margin-bottom: 4%; width: 200px; height: 40px;
				display: block;
				font-weight: bold;
				background: linear-gradient(45deg, rgb(16, 137, 211) 0%, rgb(18, 177, 209) 100%);
				color: white;
				padding-block: 15px;
				margin: 20px auto;
				border-radius: 20px;
				box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 20px 10px -15px;
				border: none;
				transition: all 0.2s ease-in-out;
				
				
  }
	.one:hover {
  transform: scale(1.03);
  box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 23px 10px -20px;
}
.two{
margin-bottom:10%;
padding-bottom:10%;
}
#ha{
marging-left:10%;
}
body{
width:99.9vw;
height:99vh;
background-repeat:no-repeat;
background-image:linear-gradient(-45deg,white,aqua,blue);
}
</style>
</head>
<body>
<%String s=(String)request.getAttribute("msg");
	if(s!=null)
    out.print(s);
%>
<div id=one
		style="padding-left: 10%; margin-top: 5%; font-weight: bold; margin-left: 30%; width: 400px; border: 2px solid black; border-radius: 7px 7px 7px 7px">
		<h1 id="ha" style="color: red;">Forgot Password Page</h1>
		<form action="com" method="get">
			<label>Enter Your Email : <input type="email" name="email"></label><br>
			<br> <label>Enter Your Password : <input type="password"
				name="password"></label>
				<br>
			<br> <label>Confirm Your Password : <input type="password"
				name="confirmPassword"></label><br><br>
			<input class="one" type="Submit" value="Submit" name="value1"">
		</form>
</div>
</body>
</html>