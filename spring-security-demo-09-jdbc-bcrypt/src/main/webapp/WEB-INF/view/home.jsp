<html>
	
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
	
	<head>
		<title>Elo 320</title>	
	</head>

	<body>
		<h2>Kuba Company Home Page</h2>
		
		<p>
			Welcome to the luv2code company home page!
		</p>
		
		
		<hr>
			<!-- display user name and role     -->
			<p>
				User: <security:authentication property="principal.username" />
				<br></br>
				Role(s): <security:authentication property="principal.authorities"/>
			</p>
		<hr>
		
		
		<!--  Add a link to point /leaders ..... this is for the managers -->
		<security:authorize access="hasRole('MANAGER')">
			<p>
				<a href = "${pageContext.request.contextPath}/leaders">LeaderShip Meeting </a>
				(Only for Manager peeps)
			</p>
		</security:authorize>
		
		
		<!-- Add a link to point  /systems  -->
		<security:authorize access="hasRole('ADMIN')">
			<p>
				<a href = "${pageContext.request.contextPath}/systems">IT Systems Meeting </a>
				(Only for Admin peeps)
			</p>
		</security:authorize>
		
		
		<!-- Add a logout button-->
		<form:form action = "${pageContext.request.contextPath}/logout" 
					method = "POST">
		
			<input type="submit" value = "Logout"/>
		
		</form:form>
		
		
		
		
		
	</body>


</html>