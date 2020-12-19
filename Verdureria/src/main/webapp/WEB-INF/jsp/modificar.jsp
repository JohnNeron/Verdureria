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
<title>Modificar producto</title>
</head>
<body>
<div class="wrapper">
  <h1>Modificación</h1>
  <form:form action="/modificarProducto" method="POST" modelAttribute="producto">
    <form:hidden path="id" value="${p.id}"/>
  	<label class="label">Nombre</label>
    <form:input path="nombre" cssClass="name" value="${p.nombre}"/>
 	<label class="label">Stock</label>
    <form:input path="stock" cssClass="email" value="${p.stock}"/>
	<label class="label">Precio</label>
    <form:input path="precio" cssClass="email" value="${p.precio}"/>
    <input type="submit" class="submit" value="Modificar">
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