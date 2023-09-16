<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Заказ овощей</title>
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
        }

        h1 {
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="number"] {
            width: 50px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>Select vegetables and indicate quantity</h1>
<form method="post" action="detailsOrder.jsp">
    <label>
        <input type="hidden" name="carrot" value="carrot"> Carrot
        <input type="number" name="quantity1" min="0" max="100" value="0">
    </label><br>
    <label>
        <input type="hidden" name="tomato" value="tomato"> Tomato
        <input type="number" name="quantity2" min="0" max="100" value="0">
    </label><br>
    <label>
        <input type="hidden" name="cucumber" value="cucumber"> Cucumbers
        <input type="number" name="quantity3" min="0" max="100" value="0">
    </label><br>
    <button type="submit">Make an order</button>

</form>
</body>
</html>