<%@ page import="java.util.List"%>
<%@ page import="dto.Transaction"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Transaction Details</title>
    <link rel="stylesheet" href="path/to/your/bootstrap.css">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th>TID</th>
        <th>Account Number</th>
        <th>Debit/Credit</th>
        <th>Transfer to</th>
        <th>Amount</th>
        <th>Transaction Date</th>
    </tr>
    <tr>
        <td>1</td>
        <td>123456789</td>
        <td>Credited</td>
        <td>8247669628</td>
        <td>1000</td>
        <td>30-10-24</td>
    </tr>
    <tr>
        <td>2</td>
        <td>987654321</td>
        <td>Credited</td>
        <td>9381310966
        </td>
        <td>5000</td>
        <td>31-10-24</td>
    </tr>
    <tr>
        <td>3</td>
        <td>987654321</td>
        <td>Debited</td>
        <td>9381310966
        </td>
        <td>4000</td>
        <td>31-10-24</td>
    </tr>
    <tr>
        <td>4</td>
        <td>9876543567</td>
        <td>Credited</td>
        <td>9381310966
        </td>
        <td>1000</td>
        <td>02-11-24</td>
    </tr>
</table>

</body>
</html>
