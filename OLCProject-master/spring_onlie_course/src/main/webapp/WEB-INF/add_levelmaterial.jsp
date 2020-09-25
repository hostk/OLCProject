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
Level: <form:select path="level.level_id" class="form-control">
	<c:forEach items="${levelList}" var="level">
	<form:option value="${level.level_id }">${level.level_name }</form:option>
	</c:forEach></form:select><br>
	
Level_material_name: <form:input path="Level_material_name" /><form:errors path="Level_material_name" cssClass="error"></form:errors> <br>

Type<form:input  path="type"/><br>
  
 File<form:input  type="file" path="file"/><br>
      
  <input type="submit" value="submit" />

</form:form>

</body>
</html>