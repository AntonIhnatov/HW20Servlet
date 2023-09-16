<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your order details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        table {
            border-collapse: collapse;
            width: 300px;
            margin: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        a {
            text-align: center;
            margin-bottom: 20px;
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h1>Your order details</h1>

<table>
    <thead>
    <tr>
        <th>Product</th>
        <th>Quantity</th>
    </tr>
    </thead>
    <tbody>
    <% if (Integer.parseInt(request.getParameter("quantity1")) > 0) { %>
    <tr>
        <td>Carrot</td>
        <td><%= request.getParameter("quantity1") %></td>
    </tr>
    <% } %>
    <% if (Integer.parseInt(request.getParameter("quantity2")) > 0) { %>
    <tr>
        <td>Cucumber</td>
        <td><%= request.getParameter("quantity2") %></td>
    </tr>
    <% } %>
    <% if (Integer.parseInt(request.getParameter("quantity3")) > 0) { %>
    <tr>
        <td>Tomato</td>
        <td><%= request.getParameter("quantity3") %></td>
    </tr>
    <% } %>
    </tbody>
</table>

<a href="makeOrder">Go back to order page</a>

</body>
</html>