<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<link rel="stylesheet" href="css/bootstrap.css"></link>
<style>
  #frm{
     width:500px;
     margin:auto;
     margin-top:10px;
  }
  marquee{
     margin-top:10px;
  }
  .topnav {
  background-color: #333;
  overflow: hidden;
  }
  .topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.topnav a.active {
  background-color: #333;
  color: white;
}
</style>
</head>
<body class="container-fluid">	
      <%
         String status =(String)request.getAttribute("status");
         if(status != null)
         {
        	 out.println(status);
         }
     %>    
	<form action="register" method="post" class="form card" id="frm">
	<div class="topnav">
	<a class="active" href="#home">Home</a>
	<a href="showdata">Organization List</a>
	</div>
		<h2 class="bg-success text-white card-header">Organization Form</h2>
		<table class="table table-hover">
		<tr>
		 <td>Name</td>
		 <td><input type="text" name="userName" required></td>
		</tr>
		<tr>
		 <td>Email</td>
		 <td><input type="email" name="email" required></td>
		</tr>
		<tr>
		 <td>Mobile</td>
		 <td><input type="text" name="mobile" required></td>
		</tr>	
		<tr>
		 <td>City</td>
		 <td><select name="city">
		 	<option value="Bangalore">Bangalore</option>
		    <option value="Pune">Pune</option>
		    <option value="Mumbai">Mumbai</option>
		    <option value="Delhi">Delhi</option>
		    <option value="Hyderabad">Hyderabad</option>
		 </select></td>
		</tr>
		<tr class="card-footer">
		<td><button type="submit" class="btn btn-outline-success">Register</button></td>
		<td><button type="reset" class="btn btn-outline-danger">Cancel</button></td>
		</tr>
		</table>		
	</form>	
</body>
</html>
    