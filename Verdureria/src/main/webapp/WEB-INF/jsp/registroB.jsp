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
<title>Registrate</title>
</head>
<body class="body3">
<div class="wrapper">
  <h1>Crear Una cuenta</h1>
  <form:form action="/agregarUsuario" method="POST" modelAttribute="usuario">
  <p>Nombre de Usuario: </p>
    <form:input path="username" cssClass="name" placeholder="Username"/>
    <div>
      <p class="name-help">Please enter your first and last name.</p>
    </div>
    <p>Contraseña: </p>
    <form:password path="password" cssClass="password" placeholder="Password"/>
     <div>
      <p class="email-help">Please enter your new password.</p>
    </div>
    <p>Rol: </p>
	<form:select path="rol" cssClass="select">
		<form:options items="${roles}" itemValue="id" itemLabel="nombre"/>
	</form:select>
    <input type="submit" class="submit" value="Registrar">
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