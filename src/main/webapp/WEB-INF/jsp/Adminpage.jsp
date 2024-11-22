<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin Panel</title>
  <style>
    body {
      background-image: url("https://images.pexels.com/photos/7134986/pexels-photo-7134986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2");
      background-size: cover;
      background-position: center;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    h1 {
      text-align: center;
      color: crimson;
    }

    .container {
      width: 40%;
      background-color: white;
      margin: 50px auto;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    .container label {
      font-weight: bold;
    }

    .container a {
      display: block;
      margin: 10px 0;
      text-decoration: none;
      color: #333;
      transition: color 0.3s;
    }

    .container a:hover {
      color: crimson;
    }

    .container button {
      display: block;
      margin: 10px auto;
      padding: 8px 16px;
      font-size: 16px;
      background-color: crimson;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .container button:hover {
      background-color: darkred;
    }
  </style>
</head>
<body>
  <h3 align="center" >${msg} </h3>
  <h1>Hello Admin!!</h1>
  <div class="container">
    
    <div class="container-fluid">
      <label>Add questions</label>
      <div style="display: flex;gap:10%;">
      <a href="Add_question_in_verbal" style="float: left;"><button>In Verbal </button></a>
      <a href="Add_question_in_reasoning" style="float: left;"><button>In Reasoning </button></a>
		</div>
		
      <br><br><br>


      <label>Manage question</label>
      <div style="display: flex;gap:6%;">
      <a href="show_verbal" style="float: left;"><button>In Verbal </button></a>
      <a href="show_reasoning" style="float: left;"><button>In Reasoning </button></a>
	</div>
      <br><br><br><br>

      <a href="makeschedule"><button type="Make Schedule">Make Exam Schedule</button></a>

      <br>

      <a href="viewStatus"><button type="View Student Details and marks">View Student Details and marks</button></a>

      <br>
      <a href="changepassword"><button type="submit">Change Password</button></a> &nbsp;
      <a href="logoutpage"><button type="submit" onclick="on()" >Logout</button></a>
      
    </div>
  </div>
</body>
</html>

<script type="text/javascript">
	function on(){
		alert("Log out Successfully")
	}
</script>
































































<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Admin Panel</title>
      <style>
         h1{
            text-align: center;
            color: crimson;
         }
          .container{
        width: 40%; 
        
         background-color: white;
         
         } 
      </style>
   </head>
   <body background="https://images.pexels.com/photos/7134986/pexels-photo-7134986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2">
  
  
             <h1> Hello Admin!! </h1>
             <div class="container" align="center">
<div class="container-fluid">
        <label> Add questions </label> &nbsp;&nbsp; 
        <a href="Add_question_in_verbal"> In Verbal </a>
        &nbsp; &nbsp; &nbsp; &nbsp;
		<a href="Add_question_in_reasoning"> In Reasoning </a> 

        <br>
        <br>
        <br>
        <br>
        

       <!--  <label> Remove questions </label> &nbsp;&nbsp; 
        <a href="remove_verbal"> From Verbal </a>
          &nbsp;&nbsp;&nbsp;&nbsp;
		<a href="remove_reasoning"> From Reasoning </a>

        <br>
        <br>
        <br>
        <br>
         -->

        

        <label> Manage question </label> &nbsp;&nbsp;  
        <a href="show_verbal"> From Verbal </a>
        &nbsp;&nbsp;&nbsp;&nbsp;
		<a href="show_reasoning"> From Reasoning </a>
			
			<br>
			<br>
    
        
        <a href="makeschedule" ><button type = "Make Schedule"> Make Schedule </button></a> 
        
        <br>
        
        <a href="viewStatus" ><button type= "View Student Details and marks "> View Student Details and marks</button></a>

        <br>
        <a href="logoutpage"><button type = "submit"> Logout</button></a> &nbsp;&nbsp;&nbsp;&nbsp;
        <a href="changepassword"><button type = "submit"> Change Password</button></a>
        
        </div>
        </div>
        </body>
   </html> --%>