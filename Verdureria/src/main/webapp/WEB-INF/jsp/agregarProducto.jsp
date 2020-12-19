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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Nuevo producto</title>
</head>
<body>
<div class="wrapper">
  <h1>Agregar un producto</h1>
  <form:form action="/ingresarProducto" method="POST" modelAttribute="producto">
  	<label class="label">Nombre</label>
    <form:input path="nombre" cssClass="name" placeholder="Nombre"/>
 	<label class="label">Stock</label>
    <form:input path="stock" cssClass="email" placeholder="Stock"/>
	<label class="label">Precio</label>
    <form:input path="precio" cssClass="email" placeholder="Precio"/>
    <input type="submit" class="submit" value="Registrar">
    </form:form><br>
    <form:form action="/listar" method="GET">
    	<input type="submit" class="submit" value="Volver">
    </form:form>
</div>
<p class="optimize">
  Optimized for Chrome & Firefox!
</p>
</body>
</html>