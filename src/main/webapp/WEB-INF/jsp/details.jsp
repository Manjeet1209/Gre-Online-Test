<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>View Student Details</title>
  <style>
  h2 {
       text-align: center;
      font-family: Arial, sans-serif;
      font-size: 28px;
      color: cyan;
      border-bottom: 6px solid #999;
    }
    </style>
</head>
<body>
		<h2> Details of all Questions</h2>
		
		<table class="table">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Candidate Name</th>
      <th scope="col">Exam opted</th>
      <th scope="col">Marks</th>
      <th scope="col">Payment Status</th>
    </tr>
  </thead>
  <tbody>
<c:forEach items="${detail}" var="d">
<tr>
      <th scope="row">${d.id} </th>
      <td>${d.name}</td>
      <td>${d.examopted}</td>
      <td>${d.marks}</td>
      <td>${d.payment}</td>
    </tr>


</c:forEach>
    
    
  </tbody>
</table>
    
  
  
 <a href="gotoAdmin" class="home-button">Go to Home🏠</a>
</body>
</html>