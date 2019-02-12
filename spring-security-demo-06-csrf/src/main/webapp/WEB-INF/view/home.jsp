<html>
	
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	
	<head>
		<title>Elo 320</title>	
	</head>

	<body>
		<h2>Kuba Company Home Page</h2>
		
		<p>
			Welcome to the luv2code company home page!
		</p>
		
		
		<form:form action = "${pageContext.request.contextPath}/logout" 
					method = "POST">
		
			<input type="submit" value = "Logout"/>
		
		</form:form>
		
		<!-- Add a logout button-->
		
		
		
	</body>


</html>