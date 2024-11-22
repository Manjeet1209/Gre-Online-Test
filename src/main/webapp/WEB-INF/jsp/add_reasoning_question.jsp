<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reasoning Questions</title>
<style>
   body {
      background-image: url("https://static.vecteezy.com/system/resources/previews/001/984/880/original/abstract-colorful-geometric-overlapping-background-and-texture-free-vector.jpg");
      background-size: cover;
      background-position: center;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
   }

   h2 {
      color: green;
      text-align: center;
      margin-top: 40px;
   }

   form {
      width: 300px;
      margin: 0 auto;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.8);
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
   }

   label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
      color: #333;
   }

   input[type="text"],
   input[type="number"] {
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
      background-color: green;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s;
   }

   input[type="submit"]:hover {
      background-color: darkgreen;
   }
</style>
</head>
<body>
   <h3 align="center" >${res} </h3>
   <h2>Add Question To Reasoning Section</h2>
   <form action="addingreasoning" method="post">
      <label for="question">Enter Question:</label>
      <input type="text" name="question" required><br>
      <label for="option1">Option 1:</label>
      <input type="text" name="option1" required><br>
      <label for="option2">Option 2:</label>
      <input type="text" name="option2" required><br>
      <label for="option3">Option 3:</label>
      <input type="text" name="option3" required><br>
      <label for="option4">Option 4:</label>
      <input type="text" name="option4" required><br>
      <label for="correctOption">Correct Option:</label>
      <input type="number" name="correctOption" min="1" max="4" required><br>
      <input type="submit" value="Add Question">
   </form>

   <a href="gotoAdmin"><button type="submit">Go to Home🏠</button></a>
   <script type="text/javascript">
      function on() {
         alert("Added successfully");
      }
   </script>
</body>
</html>































































<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reasoning Questions</title>
<style >
    h2{
    color: green;
    text-align: center;
    }
</style>
</head>
<body background="https://static.vecteezy.com/system/resources/previews/001/984/880/original/abstract-colorful-geometric-overlapping-background-and-texture-free-vector.jpg">


 <h2>Manage Reasoning Questions</h2>
    <form action="addingreasoning" method="post">
         <label for="question">Enter Question:</label> 
        <input type="text"  name="question"required><br>
         <label for="option1">Option 1:</label> 
        <input type="text" name="option1" required><br>
          <label for="option2">Option 2:</label>
        <input type="text"  name="option2" required><br>
         <label for="option3">Option 3:</label> 
        <input type="text"  name="option3"required><br>
         <label for="option4">Option 4:</label>
        <input type="text" name="option4"required><br>
         <label for="correctOption">Correct Option:</label>
        <input type="number"  name="correctOption" max="4" required><br>
        <input type="submit" value="Add Question" onclick="on()">
    </form>

</body>
</html>
<script type="text/javascript">
	function on(){
		alert("Added successfully")
	}
</script>
 --%>