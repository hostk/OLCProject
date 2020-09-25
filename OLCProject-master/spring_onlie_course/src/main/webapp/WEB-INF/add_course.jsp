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
<form:form action="save_course" method="POST" modelAttribute="course" >

<div class="form-group col-sm-6">
      <label for="course_name">Course_name:</label>
      <form:input path="course_name" class="form-control" placeholder="Enter course_name"/>
      
    </div><br>
<div class="form-group col-sm-6">
      <label for="Course_Description">Description:</label>
      <form:input path="course_description" class="form-control" placeholder="Enter Description"/>
      
    </div><br>



<button type="submit" class="btn btn-primary">Save</button>

</form:form>

</body>
</html>