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

<title>View Reasoning Questions</title>
<style>
  h2{     
    color: magenta;
    text-align: center;     
  }
  </style>
</head>
<body>
	 <h2> Reasoning question to be asked in exam </h2>
	 
	  <table class="table">
  <thead>
    <tr>
      <th scope="col">question id</th>
      <th scope="col">question</th>
      <th scope="col">op1</th>
      <th scope="col">op2</th>
      <th scope="col">op3</th>
      <th scope="col">op4</th>
      <th scope="col">correct option</th>
     <!--  <th scope="col">Advance Control</th> -->
    </tr>
  </thead>
  <tbody>
<c:forEach items="${reasq}" var="rs">
<tr>
      <th scope="row">${rs.id} </th>
      <td>${rs.question}</td>
      <td>${rs.option1}</td>
      <td>${rs.option2}</td>
      <td>${rs.option3}</td>
      <td>${rs.option4}</td>
      <td>${rs.correctOption}</td>
      <td><button color="blue" type = "submit"><a href="/updatereasoning/${rs.id}">edit</a></button></td>
      <td><a href="/removevereas/${rs.id}"><button color="blue" type = "submit" onclick="on()"  >Delete</button></td>
    </tr>

</c:forEach> 
    
    
  </tbody>
</table>
<a href="gotoAdmin"><button type="submit">Go to Home🏠</button></a>
</body>
</html>
<script type="text/javascript">
	function on(){
		alert("deleted successfully")
	}
</script>