<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/common/include.jsp"%>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h3>ItemSale List</h3>
<a href="add_course">New ItemSale</a>
<table class="table table-borderless">
	<thead>
		<tr>
			<th>No</th>
			<th>Name</th>
			<th>Description</th>
			<th>Photo</th>
			
		
			
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${courseList }" var="its" varStatus="row">
			<tr>
				<td>${row.count}</td>
				<td>${its.course_name}</td>
				<td>${its.course_description}</td>
				<td><img src="./images/${its.photopath}" width="80" height="80" style="border:1px solid red;" /></td>
			
				     
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</body>
</body>
</html>