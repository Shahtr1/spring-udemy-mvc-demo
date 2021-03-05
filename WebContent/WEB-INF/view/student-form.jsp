<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>

	<form:form action="processForm" modelAttribute="student">
		First name: <form:input path="firstName"/>
		
		<br><br>
		
		Last name: <form:input path="lastName"/>
		
		<br><br>
		
		<form:select path="country">
			<form:options items="${theCountryOptions }" />
		</form:select>
		
		<br><br>
		
		
		<form:radiobuttons path="favouriteLanguage" 
			items="${student.favoriteLanguageOptions }"/>
		
		<br><br>
		
		Operating systems:
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		MS Windows<form:checkbox path="operatingSystems" value="MS Windows" />
		
		<br><br>
		
		<input type="submit" value="submit"/>
	</form:form>

</body>

</html>