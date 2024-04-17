<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Result Dojo Survey</title>
</head>
<body>
	    <h2>Submitted info</h2>
    <c:if test="${sessionScope.survey ne null}">
        <p>Name: ${sessionScope.survey.name}</p>
        <p>Location: ${sessionScope.survey.location}</p>
        <p>Favorite Language: ${sessionScope.survey.language}</p>
        <c:if test="${not empty sessionScope.survey.comment}">
            <p>Comment: ${sessionScope.survey.comment}</p>
        </c:if>
    </c:if>
    <form action="/goback" method="GET">
        <button>Go Back</button>
    </form>

</body>
</html>