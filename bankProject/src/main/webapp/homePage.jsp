<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<body>
  <style>
  	
  	*{
  		margin:0px;
  		padding:0px;
  	}
        body {
        width:100%;
		height:99vh;
		background-repeat:no-repeat;
		background-image:url(https://cdn.pixabay.com/photo/2023/03/28/01/10/money-7881948_1280.jpg);
		background-position:center;
		background-size:110% 110%;
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
         overflow:hidden;
           
        }
        .header {
            background-color: #0052cc;
            padding: 20px;
            color: white;
            display: flex;
            align-items: center;
            position:relative
        }
        .header img {
            height: 30px;
            margin-right: 20px;
        }
        .header h1 {
            margin: 0;
            position:absolute
            left:50%;
            
        }
        .menu-bar {
            background-color: #007bff;
            padding: 10px;
            color: white;
            display: flex;
            justify-content: space-around;
            position: relative;
        }
        .menu-bar a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 16px;
        }
        .menu-bar a:hover {
            background-color: #004494;
        }
        .dropdown {
            position: relative;
            display: inline-block;
             padding: 10px;
            
        }
        .dropdown-content {
            display: none;
            padding: 10px;
            position: absolute;
            background-color: #f8f9fa;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
       
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .sidebar {
            float: left;
            width: 200px;
            background-color: #f8f9fa;
            padding: 15px;
        }
        .sidebar a {
            display: block;
            padding: 10px;
            color: #333;
            text-decoration: none;
        }
        .sidebar a:hover {
            text-decoration: underline;
        }
        
        .content {
            margin-left: 220px;
            padding: 20px;
        }
        .profile-icon {
            font-size: 50px;
            color: #007bff;
            text-align: center;
        }
        .profile-section {
            display: flex;
            justify-content: space-around;
        }
        .profile-box {
            background-color: white;
            padding: 20px;
            text-align: center;
            width: 200px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .profile-box img {
            height: 100px;
            margin-bottom: 15px;
        }
        .profile-box a {
            text-decoration: none;
            color: #007bff;
        }
        #one{
        width:50px;
        height:50px;
        padding-left:10%;
        } #two{
        margin-top:40%;
        }
        #three{
        width:30%;
        height:80%;
        }
    </style>
</head>
<body>
<%  String email = (String) session.getAttribute("email");

// Check if email is null
if (email == null) {
    // Redirect to login page if email is not found
    response.sendRedirect("login.jsp");
    return;
} %>
<form action="home" method="post">
    <!-- Header Section -->
    <div class="header">
        <img src="https://cdn-icons-png.flaticon.com/128/38/38978.png" alt="ABCD Logo">
        <h1>ADVANCED BANKING</h1>
    </div>

    <!-- Menu Bar -->
    <div class="menu-bar">
        <a href="AccountDetailsServlet?email=<%= session.getAttribute("email") %>">My Accounts & Profile</a>
        <a href="transactions.jsp">Payments / Transactions</a>
        <a href="BalanceServlet?email=<%=session.getAttribute("email")%>">View Balance</a>
        <a href="Payment.jsp">Fixed Deposit</a>
       
        <a href="CreateBankAccount.jsp">Create Account</a>

        <!-- Dropdown for Account -->
        <div class="dropdown">
            <a href="#">User</a>
            <div class="dropdown-content">
                <a href="update.jsp">Update</a>
                <a  href="delete.jsp">Delete</a>
                <a href="login.jsp">Logout</a>
            </div>
        </div>
        
        <div class="dropdown">
            <a href="#"><img id="three" src="https://cdn-icons-png.flaticon.com/128/7175/7175356.png"></a>
            <div class="dropdown-content">
                <a href="UpdateAccount.jsp">Update Account</a>
                <a  href="DeleteAccount.jsp">Delete</a>
                <a href="login.jsp">Logout</a>
                
            </div>
        </div>
    </div>



</form>

</body>
</html>