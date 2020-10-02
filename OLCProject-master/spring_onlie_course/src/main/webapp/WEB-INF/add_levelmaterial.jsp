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
<form:form action="save_levelmaterial" method="POST" modelAttribute="levelM" enctype="multipart/form-data">
<div class="form-group col-sm-6">
      <label for="price">Level:</label>
      <form:select path="level.level_id" class="form-control">
	<c:forEach items="${levelList}" var="level">
	<form:option value="${level.level_id }">${level.level_name }</form:option>
	</c:forEach></form:select>
</div><br>
<div class="form-group col-sm-6">
      <label for="Level_material_name">Name:</label>
      <form:input path="Level_material_name" class="form-control" placeholder="Enter name"/>
      
</div><br>
<div class="form-group col-sm-6">
      <label for="type">Type:</label>
      <form:input path="type" class="form-control" placeholder="Enter Type"/>
      
</div><br>
<div class="form-group col-sm-6">
      <label for="file">File</label>
      <form:input  type="file" path="file"/>
   </div>   
   <br>

 <button type="submit" class="btn btn-primary">Save</button>

</form:form>

</body>
</html>