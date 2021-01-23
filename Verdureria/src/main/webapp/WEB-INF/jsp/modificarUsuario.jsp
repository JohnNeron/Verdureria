<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/registro.css">
<link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<script src="js/registry.js"></script>
<script src="js/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Modificar Usuario</title>
</head>
<body class="body4">
<div class="wrapper">
  <h1>Modificar usuario existente</h1>
  <form:form action="/modificarUsuario" method="POST" modelAttribute="usuario">
  <form:hidden path="id" value="${u.id}"/>
  <p>Nombre de Usuario: </p>
    <form:input path="username" cssClass="name" value="${u.username}"/>
    <form:hidden path="password" value="${u.password}"/>
    <p>Rol: </p>
	<form:select path="rol" cssClass="select">
		<form:options items="${roles}" itemValue="id" itemLabel="nombre"/>
	</form:select>
    <input type="submit" class="submit" value="Aplicar Cambios">
    </form:form><br>
    <form:form action="/verUsuario" method="GET">
    	<input type="submit" class="submit" value="Volver">
    </form:form>
</div>
<p class="optimize">
  Optimized for Chrome & Firefox!
</p>
</body>
</html>