<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Error Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    .container {
      max-width: 400px;
      padding: 40px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    h1 {
      font-size: 36px;
      color: #333;
      margin-bottom: 30px;
    }

    p {
      font-size: 18px;
      color: #666;
      margin-bottom: 20px;
    }

    .button-container {
      margin-top: 20px;
    }

    .button-container a {
      display: inline-block;
      text-decoration: none;
      background-color: #4CAF50;
      color: white;
      padding: 12px 24px;
      border-radius: 4px;
      transition: background-color 0.3s;
    }

    .button-container a:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Access Denied</h1>
    <p>Please login first to access this page.</p>
    <div class="button-container">
      <a href="adminlogin">Go to login page</a>
    </div>
  </div>
</body>
</html>

