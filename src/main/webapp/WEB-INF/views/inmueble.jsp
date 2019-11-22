<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Propiedad</title>
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

	<!-- Navigation bar starts -->
	<div><jsp:include page="Navigationbar.jsp" /></div>
	<!-- Navigation bar ends -->
	<!--/ Nav End /-->

	<!--/ Intro Single star /-->
	<section class="intro-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-8">
					<div class="title-single-box">
						<h1 class="title-single">${propiedad.getDomicilio().getCalleNum()}</h1>
						<span class="color-text-a">${propiedad.getDomicilio().getCdEdo()}</span>

					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/terrapp/">Inicio</a></li>
							<li class="breadcrumb-item"><a href="propiedades">Propiedades</a>
							</li>
							<li class="breadcrumb-item active" aria-current="page">${propiedad.getDomicilio().getCalleNum()}</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--/ Intro Single End /-->
	<!--/ Property Single Star /-->
	<section class="property-single nav-arrow-b">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="property-single-carousel"
						class="owl-carousel owl-arrow gallery-property">
						<c:forEach var="foto" items="${propiedad.getFotos()}">
							<div class="carousel-item-b">
								<img src="${foto.getUrl()}" alt="${foto.getUrl()}">
							</div>
						</c:forEach>
					</div>
					<div class="row justify-content-between">
						<div class="col-md-5 col-lg-4">
							<c:if test="${propiedad.getVenta()!=null}">
								<div class="property-price d-flex justify-content-center foo">
									<div class="card-header-c d-flex">
										<div class="card-box-ico">
											<span class="title-d">VENTA</span>
										</div>
										<div class="card-title-c align-self-center">
											<h5 class="title-c">$${propiedad.getVenta().getMonto()}</h5>
										</div>
									</div>
								</div>
								<p></p>
							</c:if>
							<c:if test="${propiedad.getRenta()!=null}">
								<div class="property-price d-flex justify-content-center foo">
									<div class="card-header-c d-flex">
										<div class="card-box-ico">
											<span class="title-d">RENTA</span>
										</div>
										<div class="card-title-c align-self-center">
											<h5 class="title-c">$${propiedad.getRenta().getMonto()}</h5>
										</div>
									</div>
								</div>
							</c:if>
							<div class="property-summary">
								<div class="row">
									<div class="col-sm-12">
										<div class="title-box-d section-t4">
											<h3 class="title-d">Resumen de Propiedad</h3>
										</div>
									</div>
								</div>
								<div class="summary-list">
									<ul class="list">
										<li class="d-flex justify-content-between"><strong>ID
												PROPIEDAD:</strong> <span>${propiedad.getId()}</span></li>
										<li class="d-flex justify-content-between"><strong>Ubicación:</strong>
											<span>${propiedad.getDomicilio().getCdEdo()}</span></li>
										<li class="d-flex justify-content-between"><strong>Tipo
												de propiedad:</strong> <span>${propiedad.getTipoPropiedad()}</span></li>
										<li class="d-flex justify-content-between"><strong>Status:</strong>
											<span>${propiedad.getEstado()}</span></li>
										<li class="d-flex justify-content-between"><strong>Area
												Terreno:</strong> <span>${propiedad.getAreaTerreno()}m <sup>2</sup>
										</span></li>
										<c:if test="${propiedad.getRecamaras()!=null}">
											<li class="d-flex justify-content-between"><strong>Cuartos:</strong>
												<span>${propiedad.getRecamaras()}</span></li>
										</c:if>
										<c:if test="${propiedad.getBanos()!=null}">
											<li class="d-flex justify-content-between"><strong>Baños:</strong>
												<span>${propiedad.getBanos()}</span></li>
										</c:if>
										<c:if test="${propiedad.getEst()!=null}">
											<li class="d-flex justify-content-between"><strong>Estacionamientos:</strong>
												<span>${propiedad.getEst()}</span></li>
										</c:if>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-7 col-lg-7 section-md-t3">
							<div class="row">
								<div class="col-sm-12">
									<div class="title-box-d">
										<h3 class="title-d">Descripcion de Propiedad</h3>
									</div>
								</div>
							</div>
							<div class="property-description">
								<p class="description color-text-a">${propiedad.getDescripcion()}</p>
							</div>
							<div class="row section-t3">
								<div class="col-sm-12">
									<div class="title-box-d">
										<h3 class="title-d">Amenidades</h3>
									</div>
								</div>
							</div>
							<div class="amenities-list color-text-a">
								<ul class="list-a no-margin">
									<c:forEach var="areas"
										items="${propiedad.getAreasCompartidas().getAreasCompartidas()}">
										<li>${areas}</li>
									</c:forEach>
									<c:forEach var="caracteristicas"
										items="${propiedad.getCaracteristicas().getCaracteristicas()}">
										<li>${caracteristicas}</li>
									</c:forEach>
									<c:forEach var="servicios"
										items="${propiedad.getServicios().getServicios()}">
										<li>${servicios}</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-10 offset-md-1">
					<ul class="nav nav-pills-a nav-pills mb-3 section-t3"
						id="pills-tab" role="tablist">
						<li class="nav-item"><a class="nav-link" id="pills-map-tab"
							data-toggle="pill" href="#pills-map" role="tab"
							aria-controls="pills-map" aria-selected="false">Mapa</a></li>
						<li class="nav-item"><a class="nav-link active"
							id="pills-video-tab" data-toggle="pill" href="#pills-video"
							role="tab" aria-controls="pills-video" aria-selected="true">Video</a>
						</li>

					</ul>
					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade show active" id="pills-video"
							role="tabpanel" aria-labelledby="pills-video-tab">
							<iframe src="https://player.vimeo.com/video/73221098"
								width="100%" height="460" frameborder="0"></iframe>
						</div>
						<div class="tab-pane fade" id="pills-map" role="tabpanel"
							aria-labelledby="pills-map-tab">

							<iframe width="100%" height="450" frameborder="0"
								style="border: 0"
								src="https://www.google.com/maps/embed/v1/search?q=${urlmap}&key=AIzaSyCzUsej-MK7-LBy7U5AF-uOoZ4kwSguZIU"></iframe>

						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="row section-t3">
						<div class="col-sm-12">
							<div class="title-box-d">
								<h3 class="title-d">Contact Agent</h3>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-lg-4">
							<img src="/terrapp/resources/theme1/img/agent-4.jpg" alt=""
								class="img-fluid">
						</div>
						<div class="col-md-6 col-lg-4">
							<div class="property-agent">
								<h4 class="title-agent">Anabella Geller</h4>
								<p class="color-text-a">Nulla porttitor accumsan tincidunt.
									Vestibulum ac diam sit amet quam vehicula elementum sed sit
									amet dui. Quisque velit nisi, pretium ut lacinia in, elementum
									id enim.</p>
								<ul class="list-unstyled">
									<li class="d-flex justify-content-between"><strong>Phone:</strong>
										<span class="color-text-a">(222) 4568932</span></li>
									<li class="d-flex justify-content-between"><strong>Mobile:</strong>
										<span class="color-text-a">777 287 378 737</span></li>
									<li class="d-flex justify-content-between"><strong>Email:</strong>
										<span class="color-text-a">annabella@example.com</span></li>
									<li class="d-flex justify-content-between"><strong>Skype:</strong>
										<span class="color-text-a">Annabela.ge</span></li>
								</ul>
								<div class="socials-a">
									<ul class="list-inline">
										<li class="list-inline-item"><a href="#"> <i
												class="fa fa-facebook" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#"> <i
												class="fa fa-twitter" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#"> <i
												class="fa fa-instagram" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#"> <i
												class="fa fa-pinterest-p" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#"> <i
												class="fa fa-dribbble" aria-hidden="true"></i>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-12 col-lg-4">
							<div class="property-contact">
								<form class="form-a">
									<div class="row">
										<div class="col-md-12 mb-1">
											<div class="form-group">
												<input type="text"
													class="form-control form-control-lg form-control-a"
													id="inputName" placeholder="Name *" required>
											</div>
										</div>
										<div class="col-md-12 mb-1">
											<div class="form-group">
												<input type="email"
													class="form-control form-control-lg form-control-a"
													id="inputEmail1" placeholder="Email *" required>
											</div>
										</div>
										<div class="col-md-12 mb-1">
											<div class="form-group">
												<textarea id="textMessage" class="form-control"
													placeholder="Comment *" name="message" cols="45" rows="8"
													required></textarea>
											</div>
										</div>
										<div class="col-md-12">
											<button type="submit" class="btn btn-a">Send Message</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ Property Single End /-->
	<!-- Footer start -->
	<div><jsp:include page="Footer.jsp" /></div>
	<!-- Footer ends-->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	<div id="preloader"></div>

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