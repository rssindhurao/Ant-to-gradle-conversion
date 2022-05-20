<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>

<script type="text/javascript">
  function validate()
  {
	  var email=document.getElementById("email").value;
	  var pass=document.getElementById("pass").value;
	  var cpass=document.getElementById("cpass").value;
	  if(email==" ")
		  {
		     document.getElementById("emailerror").innerHTML="Please enter Email...";
		     return false;
		  }
	  else
		  {
		     document.getElementById("emailerror").innerHTML=" ";
		  }
	  if(pass==" ")
		  {
			     document.getElementById("passerror").innerHTML="Please enter password...";
			     return false;
		 }
		  else
		 {
			     document.getElementById("passerror").innerHTML=" ";
	     }  
	  if(pass.length<5 || pass.length>8)
		  {
		  document.getElementById("passerror").innerHTML="Password should be in between 5 to 8 characters..";
		  return false;
		  }
	  else
	  {
	     document.getElementById("passerror").innerHTML=" ";
	  }	  
	  if(cpass==" ")
	  {
		     document.getElementById("cpasserror").innerHTML="Please re-enter password...";
		     return false;
	 }
	  else
	 {
		     document.getElementById("passerror").innerHTML=" ";
	 } 
	  if(cpass != pass)
	  {
		     document.getElementById("cpasserror").innerHTML="please enter same password";
		     return false;
	 }
	  else
	 {
		     document.getElementById("passerror").innerHTML="";
	 } 
	  return true;
  }
</script>
</head>
<body>
<div align="center">
     <fieldset>
      <%
         String status =(String)request.getAttribute("status");
         if(status != null)
         {
        	 out.println(status);
         }
     %>
        <legend><h1>Sign up</h1></legend>
        <form onsubmit="return validate()" action="signupServlet" method="post">
              <table>
                    <tr>
                        <td>Email : </td>
                        <td><input type="email" id="email" name="email" required="required"></td>
                        <td><span style="color:red" id="emailerror"></span></td>
                    </tr>
                     <tr>
                        <td>Password : </td>
                        <td><input type="password" id="pass" name="pass" required="required"></td>
                        <td><span style="color:red" id="passerror"></span></td>
                    </tr>  
                    <tr>
                        <td>Confirm Password : </td>
                        <td><input type="password" id="cpass" name="cpass" required="required"></td>
                        <td><span style="color:red" id="cpasserror"></span></td>
                   </tr>
                    <tr>
                    <td><input type="submit" value="Register"></td>
                    </tr>
              </table>
        </form>
        <br>
        Already User?<a href="login.jsp">Login</a>
      </fieldset>
 </div>
</body>
</html>