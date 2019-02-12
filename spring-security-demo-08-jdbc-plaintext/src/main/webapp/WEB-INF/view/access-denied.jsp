<html>
	
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
	
	<head>
		<title>Kuba page Access denied</title>	
	</head>

	<body>
	
		<h2>Access denied, you are not authorized o access this resource</h2>
		<a href="${pageContext.request.contextPath}/"> Go back to home page </a>
		
	</body>


</html>