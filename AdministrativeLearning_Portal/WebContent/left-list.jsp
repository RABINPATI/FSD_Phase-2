<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
<div class="sidenav" style="background-color:  #0775d3">
	<h3 id="logo"><u>
		Administrative Academy Portal</u>
	</h3>
	<c:url var="classesLink" value="AdminControllerServlet">
		<c:param name="command" value="CLASSES" />
	</c:url>

	<c:url var="subjectsLink" value="AdminControllerServlet">
		<c:param name="command" value="SUBJECTS" />
	</c:url>

	<c:url var="teachersLink" value="AdminControllerServlet">
		<c:param name="command" value="TEACHERS" />
	</c:url>

	<c:url var="studentsLink" value="AdminControllerServlet">
		<c:param name="command" value="STUDENTS" />
	</c:url>
	
	    <a style="font-size: 15px" class="bar-item" href="${classesLink}">Classes</a> 
		<a style="font-size: 15px" class="bar-item" href="${subjectsLink}">Subjects</a>
		<a style="font-size: 15px" class="bar-item" href="${teachersLink}">Teachers</a> 
		<a style="font-size: 15px" class="bar-item" href="${studentsLink}">Students</a> 
		<a style="font-size: 15px" class="bar-item" href="login.jsp">Log out</a>

</div>
</body>
</html>
