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
        /* Styling for account details */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        .account-details {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            text-align: left;
        }
        .account-details h2 {
            color: #333;
        }
        .account-details p {
            font-size: 16px;
            color: #555;
        }
    </style>

    <div class="account-details">
        <% String error = (String) request.getAttribute("error"); %>
<% if (error != null) { %>
    <div class="error-message"><%= error %></div>
<% } else { %>
    <div>AccountHolderName: <%= request.getAttribute("accountHolderName") %></div>
     <div>AccountNumber: <%= request.getAttribute("AccountNumber") %></div>
     <div>Email: <%= request.getAttribute("email") %></div>
     <div>phone: <%= request.getAttribute("phone") %></div>
     <div>InitialBalance: <%= request.getAttribute("initialBalance") %></div>
     <div>AccountType: <%= request.getAttribute("AccountType") %></div>
    
     <div>Address: <%= request.getAttribute("Address") %></div>
     <a href="homePage.jsp">Go back to My Account</a> <!-- Redirect to your main account page -->
          
        
    
<% } %>
        
    </div>


</body>
</html>