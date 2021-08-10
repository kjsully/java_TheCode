<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>idk</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="form-group mt-5">
	<form method="POST" action="/code">
	<c:out value= "${codeError}"></c:out>
	<p class="form-group">
	What is the code?
	</p>
	<div class="form-group">
    <label>Code: <input type="text" name="code"></label>
    </div>
    <button class="btn btn-primary">Try Code</button>
	</form>
</div>
</body>
</html>