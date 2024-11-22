<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Scheduler</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 20px;
    }

    h2 {
      color: #333333;
    }

    form {
      background-color: #ffffff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-bottom: 10px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="date"] {
      padding: 8px;
      border-radius: 3px;
      border: 1px solid #cccccc;
      width: 200px;
      margin-bottom: 10px;
    }

    button[type="submit"] {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: #ffffff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    button[type="submit"]:hover {
      background-color: #45a049;
    }

    a {
      text-decoration: none;
      color: #ffffff;
    }

    .home-button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #428bca;
      color: #ffffff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    .home-button:hover {
      background-color: #3276b1;
    }
  </style>
</head>
<body>
  <h2>Time Scheduling Page</h2>
<h5 align="center" >${information} </h5>
  <form action="scheduler" method="post">
    <label for="examname">Exam Name:</label>
    <input type="text" id="exam-name" oninput="check()" name="examname" required>

    <label for="examdate">Exam Date:</label>
    <input type="date" id="exam-date" name="examdate" min="<%= java.time.LocalDate.now() %>" required>

    <button type="submit" >Submit    </button>
  </form>

  <a href="gotoAdmin" class="home-button">Go to Home🏠</a>
</body>
</html>