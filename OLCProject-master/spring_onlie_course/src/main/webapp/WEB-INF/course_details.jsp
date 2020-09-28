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


<table class="table" style=" color:blue;font-style: oblique;">
	<thead>
		<tr>
			<th>No</th>
			<th>Name</th>
			
		
			
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${levels }" var="level" varStatus="row">
			<tr>
				<td>${row.count}</td>
				<td>${level.level_name}</td>
				
				     
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</body>
</html>