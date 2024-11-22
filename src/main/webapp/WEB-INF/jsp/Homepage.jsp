<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>GRE Online Exam Portal Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #87CEEB;
      }
      form {
        border: 3px solid #f1f1f1;
        background-color: #ffffff;
        margin: 5% auto;
        max-width: 500px;
        padding: 20px;
      }
      
      h2 {
        text-align: center;
      }
      input[type=email], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
      }
      button {
        align: center;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 50%;
      }
    </style>
    
</head>
<body align ="center">
 <h3 >${errorMsg} </h3>
<form action="adminpage" method="post" >
      <div class="container">
        <h2>GRE Online Exam Portal Admin Login</h2>
        <label for="uname"><b>Email Id</b></label>
        <input type="email" placeholder="Enter Emailid" name="uname" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw"  required>
      <button type="submit" >ADMIN LOGIN</button>     
      </div>
    </form>			
</body>
</html>