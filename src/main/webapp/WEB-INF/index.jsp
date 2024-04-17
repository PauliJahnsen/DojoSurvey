<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Dojo Survey</title>
	<link rel="stylesheet" href="./css/styles.css">	
</head>
<body>
	<h1 class="titulo">Welcome to Dojo Survey</h1>
		<div class="formulario">
		<form action="/login" method="POST">
			<div>
				<label for="nombre">
					Your name:
				</label>
				<input type="text" id="nombre" name="nombre">
			</div>
			<div>
				<label for="ubicacion">
					Dojo Location:
					<select id="ubicacion" name="ubicacion">
						<c:forEach var="ubicacion" items="${locations}">
						<option> <c:out value="${ubicacion}"/> </option>
						</c:forEach>
					</select>
				</label>
			</div>
			<div>
				<label for="lenguaje">
					Favorite Language:
					<select id="lenguaje" name="lenguaje">
						<c:forEach var="lenguaje" items="${languages}">
						<option> <c:out value="${lenguaje}"/> </option>
						</c:forEach>
					</select>
				</label>
			</div>
			<div>
			    <label for="comment">
			        Comment (optional)
			        <input type="text" id="comment" name="comment">
			    </label>
			</div>
			<button>
				Send
			</button>
					<div class="mensajeError">
			<c:out value="${errorLogin}"></c:out>
		</div>
		</form>
	</div>
</body>
</html>