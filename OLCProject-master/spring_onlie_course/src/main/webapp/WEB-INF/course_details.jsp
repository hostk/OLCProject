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
   <div class="col-sm-9 col-8">
      <div id="section1" class="bg-primary">    
        <c:forEach items="${levelmaterialList }" var="m" varStatus="row">
			<tr>
				<td>${row.count}</td>
				<td>${m.name }</td>
			<td><input type="radio" name="course" value="Correspondance">${m.type }</td></tr><br>
				<!-- <video width="220" height="150" controls><source src="/images/${m.photopath }" type="video/mp4"></video></td> 
			<td><embed src="/images/Beginning Android� Programming with Android Studio ( PDFDrive ).pdf" type="application/pdf"   height="700px" width="500"><td>-->
		
		</c:forEach>
      </div>
      
    </div>
</div>

	
</body>
</html>