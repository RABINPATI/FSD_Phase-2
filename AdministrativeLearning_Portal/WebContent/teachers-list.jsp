<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Teachers</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('css/background.jpg');">
	<div id="page">
		<jsp:include page="left-list.jsp" />
		
		<div id="wrapper">
			<div id="header">
				<h3>Teachers</h3>
			</div>
		</div>
		<div id="container">
			<div id="content">
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Age</th>
					</tr>
					<c:forEach var="teachersData" items="${TEACHERS_LIST }">
						<tr>
							<td>${teachersData.fname}</td>
							<td>${teachersData.lname}</td>
							<td>${teachersData.age}</td>
						</tr>
					</c:forEach>
				</table>
			</div></div></div>
</body></html>
