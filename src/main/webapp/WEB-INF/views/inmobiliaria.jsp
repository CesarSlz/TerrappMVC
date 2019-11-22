<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inmobiliarias</title>
<!-- Favicons -->
<link href="<c:url value="/resources/theme1/img/favicon.png" />"
	rel="icon">
<link
	href="<c:url value="/resources/theme1/img/apple-touch-icon.png" />"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="<c:url value="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link
	href="<c:url value="/resources/theme1/lib/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Libraries CSS Files -->
<link
	href="<c:url value="/resources/theme1/lib/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/theme1/lib/animate/animate.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/theme1/lib/ionicons/css/ionicons.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/theme1/lib/owlcarousel/assets/owl.carousel.min.css" />"
	rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="<c:url value="/resources/theme1/css/style.css" />"
	rel="stylesheet">

<link href="<c:url value="/resources/theme1/css/main.css" />"
	rel="stylesheet">

<link href="<c:url value="/resources/theme1/css/login_modal.css" />"
	rel="stylesheet">

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
	<!-- inicio de navigation bar -->
	<section>
		<div><jsp:include page="Navigationbar.jsp" /></div>
	</section>
	<!--/ Intro Single star /-->
	<section class="intro-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-8">
					<div class="title-single-box">
						<h1 class="title-single">Inmobiliarias</h1>
						<span class="color-text-a">Inmobiliarias afiliadas</span>
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/terrapp/">Inicio</a></li>
							<li class="breadcrumb-item active" aria-current="page">
								Lista Inmobiliarias</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--/ Intro Single End /-->

	<!--/ Agents Grid Star /-->
	<section class="agents-grid grid">
		<div class="container">
			<div class="row">
				<c:forEach var="inmobiliarias" items="${inmobiliarias}">
					<div class="col-md-4">
						<div class="card-box-d">
							<div class="card-img-d">
								<img src="${inmobiliarias.getLogoUrl()}" alt=""
									class="img-d img-fluid">
							</div>
							<div class="card-overlay card-overlay-hover">
								<div class="card-header-d">
									<div class="card-title-d align-self-center">
										<h3 class="title-d">
											<a href="${inmobiliarias.getUrl()}" class="link-two">${inmobiliarias.getNombre()}<br>
											</a>
										</h3>
									</div>
								</div>
								<div class="card-body-d">
									<p class="content-d text-white">${inmobiliarias.getDomicilio().getDireccion()}</p>
									<div class="info-agents color-a">
										<p class="text-white">
											<strong>Teléfono: </strong>${inmobiliarias.getTelefono()}
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!--/ Agents Grid End /-->

	<!--/ footer Star /-->
	<div><jsp:include page="Footer.jsp" /></div>
	<!--/ Footer End /-->

	<!-- JavaScript Libraries -->
	<script
		src="<c:url value="/resources/theme1/lib/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/theme1/lib/jquery/jquery-migrate.min.js" />"></script>
	<script
		src="<c:url value="/resources/theme1/lib/popper/popper.min.js" />"></script>
	<script
		src="<c:url value="/resources/theme1/lib/bootstrap/js/bootstrap.min.js" />"></script>
	<script
		src="<c:url value="/resources/theme1/lib/easing/easing.min.js" />"></script>
	<script
		src="<c:url value="/resources/theme1/lib/owlcarousel/owl.carousel.min.js" />"></script>
	<script
		src="<c:url value="/resources/theme1/lib/scrollreveal/scrollreveal.min.js" />"></script>

	<!-- Contact Form JavaScript File -->
	<script
		src="<c:url value="/resources/theme1/contactform/contactform.js" />"></script>

	<!-- Template Main Javascript File -->
	<script src="<c:url value="/resources/theme1/js/main.js" />"></script>

	<script src="<c:url value="/resources/theme1/js/login_modal.js" />"></script>
</body>
</html>