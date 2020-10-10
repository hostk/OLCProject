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

<table class="table table-borderless">
	<thead>
		<tr>
			<th>No</th>
			<th>Name</th>
			<th>Type</th>
			
			
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${levelmaterialList }" var="m" varStatus="row">
			<tr>
				<td>${row.count}</td>
				<td>${m.name}</td>
			<td><a href="/show/vedio/${m.vedioPath}">Video</a>
				<a href="/show/pdf/${m.pdfPath}">PDF</a></td></tr>
				
		</c:forEach>
		
	</tbody>
</table>
</div>
</body>
</html>