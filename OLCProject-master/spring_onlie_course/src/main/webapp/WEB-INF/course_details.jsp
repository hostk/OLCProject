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

	<div class="container-fluid">
  <div class="row">
    <nav class="col-sm-3 col-4" id="myScrollspy">
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
        	<c:forEach items="${levels}" var="level" varStatus="row">
			
		
		<a class="nav-link active" href="/levelM/${level.level_id}">${level.level_name}</a><br>
				   
			
		</c:forEach>
          
        </li>
       
      </ul>
    </nav>
   
  </div>
   
</div>

	
</body>
</html>