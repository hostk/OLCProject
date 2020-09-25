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
<form:form action="save_level" method="POST" modelAttribute="level" >

	 <div class="form-group col-sm-6">
      <label for="price">Course_name:</label>
      <form:select path="course.course_id" class="form-control">
	<c:forEach items="${courseList}" var="course">
	<form:option value="${course.course_id }">${course.course_name }</form:option>
	</c:forEach></form:select>
    </div><br>
<div class="form-group col-sm-6">
   <label for="level_name">Level_Name:</label>
   <form:input path="level_name" class="form-control" placeholder="Enter level"/>
      
    </div><br>

<button type="submit" class="btn btn-primary">Save</button>

</form:form>

</body>
</html>