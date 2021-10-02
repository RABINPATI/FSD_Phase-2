<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Classes</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('css/background.jpg');">
	<div id="page">
		<jsp:include page="left-list.jsp" />
		<div id="wrapper">
			<div id="header">
				<h3>Classes</h3>
			</div>
		</div>

		<div id="container">

			<div id="content">
				<table>
					<tr>
						<th>Section</th>
						<th>Subject</th>
						<th>Teacher</th>
						<th>Time</th>
						<th>Students List</th>
					</tr>
					<c:forEach var="classData" items="${CLASSES_LIST }">
						<tr>
							<c:url var="studentsLink" value="AdminControllerServlet">
								<c:param name="command" value="ST_LIST" />
								<c:param name="classId" value="${classData.id }" />
								<c:param name="section" value="${classData.section }" />
								<c:param name="subject" value="${classData.subject }" />
							</c:url>

							<td>${classData.section}</td>
							<td>${classData.subject}</td>
							<td>${classData.teacher}</td>
							<td>${classData.time}</td>
							<td><a href="${studentsLink }">StudentsInfo</a></td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>

</body>
</html>