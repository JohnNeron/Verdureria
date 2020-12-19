<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<link rel="stylesheet" href="css/formStyle.css">
	<script src="js/form.js"></script>
<title>Administrar Producto</title>
</head>
<body>
	<nav>
		<ul class="topnav">
		  <li><a href="/">Inicio</a></li>
		  <li><a class="active" href="#news">Ver Productos</a></li>
		  <li class="right"><a href="/logout">Cerrar Sesión</a>
		</ul>
	</nav>
	<section>
	  <!--for demo wrap-->
	  <h1>Productos Agregados</h1>
	  <div class="tbl-content">
	    <table cellpadding="0" cellspacing="0" border="0">
	      	<th style="width: 100px"> ID</th>
	      	<th style="width: 250px"> Nombre</th>
			<th style="width: 250px"> Stock</th>
			<th style="width: 250px"> Precio</th>
			<c:forEach items="${productos}" var="p">
				<tbody id="myTable">
					<tr>
						<td>${p.id}</td>
						<td>${p.nombre}</td>
						<td>${p.stock}</td>
						<td>${p.precio}</td>
					</tr>
				</tbody>
			</c:forEach>	
	   	 </table>
	  </div>
	</section>
</body>
</html>