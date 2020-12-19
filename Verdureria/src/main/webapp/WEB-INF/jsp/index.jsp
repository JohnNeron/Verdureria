<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Home</title>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
      crossorigin="anonymous"
    />
    <script
      src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
      integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="css/estilo.css" />
    <title>Los Eren</title>
  </head>
  <body style="background-color: rgb(255, 255, 255);">
    <nav
      class="navbar navbar-expand-lg navbar-dark bg-dark static-top fixed-top"
    >
      <div class="container">
        <a class="navbar-brand" href="/"
          ><img src="img/PM.PNG" width="50" height="50" alt="" /> INICIO</a
        >
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/"
                >Inicio
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/listar">Ver Productos</a>
            </li>
            <li class="nav-item">
            	<a class="nav-link" href="/logout">Cerrar Sesión</a>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container">
      <div class="row" style="margin-top: 80px">
        <div class="col-lg-5 center" style="text-align: center">
          <img src="img/PM.PNG" width="400" height="400" alt="legion de reconocimiento" id="legion"/>
        </div>
        <div class="col-lg-7"> <br>
          <h1>Verduderia "LOS EREN"</h1>
          <h3 class="lead">
            Los mejores productos para combatir el hambre colosal.
            <br />
            <br>
            <a href="/listar" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Ir a ver</a>
          </h3>
          <br>
          <ul class="list-unstyled">
            <li>Atencion de lunes a viernes</li>
            <li>de 10:00 a 18:00 hrs.</li>
          </ul>
        </div>
      </div>
    </div>
    <!-- Footer -->
    <footer class="page-footer font-small blue pt-4">
        <h1 style="text-align: center;"><b>Bienvenido</b></h1>
    </footer>
  </body>
</html>