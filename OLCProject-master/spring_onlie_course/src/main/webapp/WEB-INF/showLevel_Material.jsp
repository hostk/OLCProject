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
				<td>${m.name }</td>
				
			<td><a href="/show/${m.type}">${m.type }</a></td></tr>
				<!-- <video width="220" height="150" controls><source src="/images/${m.photopath }" type="video/mp4"></video></td> 
			<td><embed src="/images/Beginning Android� Programming with Android Studio ( PDFDrive ).pdf" type="application/pdf"   height="700px" width="500"><td>-->
		</c:forEach>
		
	</tbody>
</table>
</div>
</body>
</html>