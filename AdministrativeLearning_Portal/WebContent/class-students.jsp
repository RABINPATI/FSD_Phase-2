<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students of a Class</title>
<link type="text/css" rel="stylesheet" href="css/style.css"> 
</head>
<body style="background-image: url('css/background.jpg');">
 <form action="AdminControllerServlet" method="POST">
	<div id="page">
		<jsp:include page="left-list.jsp" />

		<div id="wrapper">

			<div id="header">
				<h3>Students of ${SUBJECT} class section ${SECTION}</h3>
			</div>
		</div>

		<div id="container" class="container">

			<div id="content">
						<input type="hidden" name="command" value="Back" />
						
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Age</th>
					</tr>

					<c:forEach var="studentsData" items="${STUDENTS_LIST}">
						<tr>
							<td>${studentsData.fname}</td>
							<td>${studentsData.lname}</td>
							<td>${studentsData.age}</td>

						</tr>
					</c:forEach>
				</table>
				
			</div>
			    
            
		</div>
		<button type="submit">Back</button> 
	</div>
</form>
</body>
</html>