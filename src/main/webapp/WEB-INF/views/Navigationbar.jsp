<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Favicons -->
<link href="<c:url value="/resources/img/favicon.png" />" rel="icon">
<link href="<c:url value="/resources/img/apple-touch-icon.png" />"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="<c:url value="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link
	href="<c:url value="/resources/lib/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Libraries CSS Files -->
<link
	href="<c:url value="/resources/lib/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/lib/animate/animate.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/lib/ionicons/css/ionicons.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/lib/owlcarousel/assets/owl.carousel.min.css" />"
	rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

<!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
<link
	href="<c:url value="https://fonts.googleapis.com/css?family=Exo&display=swap" />"
	rel="stylesheet">

</head>
<body>
	<div class="click-closed"></div>
	<!--/ Form Search Star /-->
	<div class="box-collapse">
		<div class="title-box-d">
			<h3 class="title-d">Buscar propiedad</h3>
		</div>
		<span class="close-box-collapse right-boxed ion-ios-close"></span>
		<div class="box-collapse-wrap form">
			<form class="form-a">
				<div class="row">
					<div class="col-md-12 mb-2">
						<div class="form-group">
							<label for="Type">Keyword</label> <input type="text"
								class="form-control form-control-lg form-control-a"
								placeholder="Keyword">
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="Type">Tipo</label> <select
								class="form-control form-control-lg form-control-a" id="Type">
								<option>Todos</option>
								<option>Renta</option>
								<option>Venta</option>
							</select>
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="city">Ciudad</label> <select
								class="form-control form-control-lg form-control-a" id="city">
								<option>Todas las ciudades</option>
								<option>Ciudad de Mexico</option>
								<option>Guadalajara</option>
								<option>Monterrey</option>
								<option>Tlaxcala</option>
							</select>
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="bedrooms">Habitaciones</label> <select
								class="form-control form-control-lg form-control-a"
								id="bedrooms">
								<option>Todas</option>
								<option>01</option>
								<option>02</option>
								<option>03</option>
							</select>
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="garages">Estacionamientos</label> <select
								class="form-control form-control-lg form-control-a" id="garages">
								<option>Todos</option>
								<option>01</option>
								<option>02</option>
								<option>03</option>
								<option>04</option>
							</select>
						</div>
					</div>

					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="price">Precio minimo</label> <select
								class="form-control form-control-lg form-control-a" id="price">
								<option>Sin limite</option>
								<option>$50,000</option>
								<option>$100,000</option>
								<option>$150,000</option>
								<option>$200,000</option>
							</select>
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="price">Precio maximo</label> <select
								class="form-control form-control-lg form-control-a" id="price">
								<option>Sin limite</option>
								<option>$5,000,000</option>
								<option>$10,000,000</option>
								<option>$15,000,000</option>
								<option>$150,000,000</option>
							</select>
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="bathrooms">Baños</label> <select
								class="form-control form-control-lg form-control-a"
								id="bathrooms">
								<option>Todos</option>
								<option>01</option>
								<option>02</option>
								<option>03</option>
							</select>
						</div>
					</div>
					<div class="col-md-12">
						<button type="submit" class="btn btn-b">Buscar propiedad</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--/ Form Search End /-->
	 <!--/ Nav Star /-->
  <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" href="index.jsp">TERRA<span class="color-b">pp</span></a>
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.html">Quienes somos?</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="property.jsp">Inmuebles</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="inmobiliaria.jsp">Inmobiliarias</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html" style="color: #81BE1C;">Ingresar</a>
          </li>
        </ul>
      </div>
      <button type="button" class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
    </div>
  </nav>
  <!--/ Nav End /-->
		<!-- JavaScript Libraries -->
	<script src="<c:url value="/resources/lib/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/lib/jquery/jquery-migrate.min.js" />"></script>
	<script src="<c:url value="/resources/lib/popper/popper.min.js" />"></script>
	<script
		src="<c:url value="/resources/lib/bootstrap/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/lib/easing/easing.min.js" />"></script>
	<script
		src="<c:url value="/resources/lib/owlcarousel/owl.carousel.min.js" />"></script>
	<script
		src="<c:url value="/resources/lib/scrollreveal/scrollreveal.min.js" />"></script>

	<!-- Contact Form JavaScript File -->
	<script src="<c:url value="/resources/contactform/contactform.js" />"></script>

	<!-- Template Main Javascript File -->
	<script src="<c:url value="/resources/js/main.js" />"></script>
	
</body>
</html>