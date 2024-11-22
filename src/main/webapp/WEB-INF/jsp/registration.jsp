<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
  <title>User Registration and Login</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body background="https://images.pexels.com/photos/7135068/pexels-photo-7135068.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2">
    <h5 align="center" >${Message} </h5>
  <div class="container">
    <h2 align="center">Gre online Test</h2>
    <ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link active" data-toggle="tab" href="#registration">Registration</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="participant">Student Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="adminlogin">Admin Login</a>
      </li>
    </ul>

    <div class="tab-content">
      <div id="registration" class="tab-pane fade show active">
        <h3>Registration Form</h3>
    <form action="registration" method = "post">
       <label for="name">Enter Name:</label> 
       <input type="text"  name="name" placeholder="Enter name" pattern="[A-Za-z ]+" required><br>
       <label for="mobile">Mobile number:</label> 
       <input type="tel" name="mobile" placeholder="10 digit mobile no." pattern="[0-9]{10}" required><br>
       <label for="qual">Qualification:</label>
       <select name="qual" required>
          <option value="Btech">Btech</option>
          <option value="Bsc">BSc</option>
          <option value="Bcom">Bcom</option>
          <option value="B.Ed">Arts</option>
          <option value="BBA">Bba</option>
          <option value="BCA">Bcom</option>
          <option value="Other">other</option>       
       </select> <br>
       <label for="course">Course Intrested:</label> 
       <select name="course" required>
          <option value="verbal">Verbal</option>
          <option value="reasoning">Reasoning</option>
       </select>
       
       <br>
       <input type="submit" value="Register">
    </form>
      </div>

      
      <div id="student-login" class="tab-pane fade">
        <h3>Student Login</h3>
        
      </div>

      
      <div id="admin-login" class="tab-pane fade">
        <h3>Admin Login</h3>
      </div>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
