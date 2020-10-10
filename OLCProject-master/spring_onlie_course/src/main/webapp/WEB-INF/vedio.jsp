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
<video width="320" height="240" controls>
  <source src="/images/${levelmaterial.vedioPath }" type="video/mp4">
  <source src="/images/${levelmaterial.vedioPath}" type="video/ogg">
  Your browser does not support the video tag.
</video>
</body>

</html>