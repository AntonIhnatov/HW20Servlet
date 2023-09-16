<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .registration-form {
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
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
<div class="registration-form">
    <h1>Registration</h1>
    <form method="post" action="/register">
        <label for="name">Name</label>
        <input type="text" id="name" name="username">

        <label for="lastName">Last Name</label>
        <input type="text" id="lastName" name="lastName">

        <label for="email">Email</label>
        <input type="text" id="email" name="email">

        <label for="password">Password</label>
        <input type="text" id="password" name="password">

        <button type="submit">Submit Registration</button>
    </form>
</div>
</body>
</html>