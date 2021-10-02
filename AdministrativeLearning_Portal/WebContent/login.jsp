<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
 <link type="text/css" rel="stylesheet" href="css/login.css"> 
</head>
<body style="background-image: url('css/background.jpg');">

  <center> <h1> Login </h1> </center>   
    <form action="AdminControllerServlet" method="POST">
    
		<%
			String login_msg = (String) request.getAttribute("error");
		if (login_msg != null)
			out.println("<font color=red size=4px>" + login_msg + "</font>");
		%>
		<div class="container">   
        	<input type="hidden" name="command" value="LOGIN" />
            <label>Username : </label>   
           
            <input type="text" placeholder="Enter Username" name="username" required>  
            <br/>
            <label>Password : </label>   
          
            <input type="password" placeholder="Enter Password" name="password" required>  
            <br/>
            <button type="submit">Login</button>   
            <br/>
            <input type="checkbox" checked="checked"> Remember me   
             
        </div>   
    </form>     


</body>
</html>