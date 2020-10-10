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
<form action="save_levelmaterial" method="POST" enctype="multipart/form-data">
<div class="form-group col-sm-6">
      <label for="price">Level:</label>
      <select name="level_id" class="form-control">
	<c:forEach items="${levelList}" var="level">
	<option value="${level.level_id }">${level.level_name }</option>
	</c:forEach></select>
</div><br>
<div class="form-group col-sm-6">
      <label for="Level_material_name">Name:</label>
      <input type="text" name="Level_material_name" class="form-control" placeholder="Enter name"/>
      
</div><br>
<div class="form-group col-sm-6">
      <label for="type">Type:</label>
      <input type="text" name="type" class="form-control" placeholder="Enter Type"/>
      
</div><br>
<div class="form-group col-sm-6">
      <label for="file">PDF</label>
      <input  type="file" name="pdf"/>
   </div>   
   <br>
   <div class="form-group col-sm-6">
      <label for="file">Vedio</label>
      <input  type="file" name="video"/>
   </div>   
   <br>
   

 <button type="submit" class="btn btn-primary">Save</button>

</form>

</body>
</html>