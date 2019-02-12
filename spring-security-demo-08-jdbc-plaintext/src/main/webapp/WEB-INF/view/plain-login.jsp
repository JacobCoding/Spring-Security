
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
	
	<head>
		<title>Custom Login Page</title>	
		
		<style>
			.failed{
				color: red;
			}
		</style>s
		
		
	</head>

	<body>
		<h3>My Custom Login Page</h3>
		
		<!--  check action content how it was created ;) -->
		<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
					method="POST">
					
			<c:if test="${param.error != null}">
		
				<i class="failed">Sorry! You entered invalid username/password.</i>
			
			</c:if>
					
					
			<p>
				User name: <input type="text" name="username" /> 
			</p>
			<p>
				Password: <input type="password" name="password" /> 
			</p>
			
			<input type="submit" value="Login" />
					
		</form:form>
		<!-- spring security will authenticate username and password be default -->
		
	</body>


</html>