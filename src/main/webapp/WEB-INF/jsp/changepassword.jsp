<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<style>
   body {
      background-color: #f5f5f5;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
   }

   form {
      width: 300px;
      margin: 50px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
   }

   input[type="text"],
   input[type="password"] {
      width: 100%;
      padding: 8px;
      margin-bottom: 16px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
   }

   input[type="submit"] {
      width: 100%;
      padding: 8px 16px;
      font-size: 16px;
      background-color: #4caf50;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s;
   }

   input[type="submit"]:hover {
      background-color: #45a049;
   }
</style>
</head>
<body>
  <h3 align="center" >${error} </h3>
  <h3 align="center" >${temp} </h3>
   <form action="/changePass" method="post">
      <input type="text" name="email" placeholder="Enter email Id" required>
      <input type="password" name="oldpass" placeholder="Enter Old Password"  required>
      <input type="password" name="newpass"  placeholder="Enter New Password" minlength="8" required>
      <input type="submit" value="Change Password">
   </form>

  
   
   <a href="gotoAdmin"><button type="submit">Go to Home🏠</button></a>
</body>
</html>

