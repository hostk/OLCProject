<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/common/include.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="save_course" method="POST" modelAttribute="course" >

Course_name: <form:input path="course_name" /><form:errors path="course_name" cssClass="error"></form:errors> <br>
Course_Description: <form:input path="course_description" /><br>

<input type="submit" value="submit" />

</form:form>

</body>
</html>