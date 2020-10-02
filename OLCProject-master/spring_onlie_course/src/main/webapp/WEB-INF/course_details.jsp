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



		<c:forEach items="${levels}" var="level" varStatus="row">
			<tr>
				
		
			<td><a href="/levelM/${level.level_id}">${level.level_name}</a></</td><br>
				   
			</tr>
		</c:forEach>
	</div>
</body>
</html>