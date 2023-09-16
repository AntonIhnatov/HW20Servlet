<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Information</title>
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

        .user-info {
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        p {
            margin: 0;
            font-size: 16px;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="user-info">
    <h1>User Information</h1>
    <p><strong>Name:</strong> ${name}</p>
    <p><strong>Last Name:</strong> ${lastName}</p>
    <p><strong>Email:</strong> ${email}</p>
</div>
</body>
</html>
