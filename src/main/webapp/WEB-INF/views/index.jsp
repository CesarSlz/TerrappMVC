<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<title>Terrapp</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

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

<link
	href="<c:url value="https://fonts.googleapis.com/css?family=Exo&display=swap" />"
	rel="stylesheet">
</head>

<body>
	<!--/ Nav Star /-->
	<div><jsp:include page="/WEB-INF/views/Navigationbar.jsp" /></div>
	<!--/ Nav End /-->

	<!--/ Carousel Star /-->
	<div class="intro intro-carousel">
		<div id="carousel" class="owl-carousel owl-theme">

			<c:forEach var="propiedad" items="${propiedad}">
				<div class="carousel-item-a intro-item bg-image"
					style="background-image: url(${propiedad.getFotos().iterator().next().getUrl()})">
					<div class="overlay overlay-a"></div>
					<div class="intro-content display-table">
						<div class="table-cell">
							<div class="container">
								<div class="row">
									<div class="col-lg-8">
										<div class="intro-body">
											<p class="intro-title-top">
												${propiedad.getDomicilio().getCdEdo()}<br>
												${propiedad.getDomicilio().getCp()}
											</p>
											<h1 class="intro-title mb-4">
												<span class="color-b">${propiedad.getDomicilio().getCalle()}</span>
												${propiedad.getDomicilio().getNumeroExt()}

												<c:if
													test="${propiedad.getDomicilio().getNumeroInt()!=null}">
												-${propiedad.getDomicilio().getNumeroInt()}
											</c:if>

											</h1>

											<p class="intro-subtitle intro-price">
												<c:if test="${propiedad.getVenta()!=null}">

													<a href="#"><span class="price-a">venta |
															$${propiedad.getVenta().getMonto()}</span></a>

												</c:if>

												<c:if test="${propiedad.getRenta()!=null}">

													<a href="#"><span class="price-a">renta |
															$${propiedad.getRenta().getMonto()}</span></a>

												</c:if>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
	<!--/ Carousel end /-->

	<!--/ Services Star /-->
	<section class="section-services section-t8">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-wrap d-flex justify-content-between">
						<div class="title-box">
							<h2 class="title-a">¿Qué hacemos?</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="card-box-c foo">
						<div class="card-header-c d-flex">
							<div class="card-box-ico">
								<span class="fa fa-gamepad"></span>
							</div>
							<div class="card-title-c align-self-center">
								<h2 class="title-c">servicio</h2>
							</div>
						</div>
						<div class="card-body-c">
							<p class="content-c">Sed porttitor lectus nibh. Cras
								ultricies ligula sed magna dictum porta. Praesent sapien massa,
								convallis a pellentesque nec, egestas non nisi.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card-box-c foo">
						<div class="card-header-c d-flex">
							<div class="card-box-ico">
								<span class="fa fa-usd"></span>
							</div>
							<div class="card-title-c align-self-center">
								<h2 class="title-c">Un servicio</h2>
							</div>
						</div>
						<div class="card-body-c">
							<p class="content-c">Nulla porttitor accumsan tincidunt.
								Curabitur aliquet quam id dui posuere blandit. Mauris blandit
								aliquet elit, eget tincidunt nibh pulvinar a.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card-box-c foo">
						<div class="card-header-c d-flex">
							<div class="card-box-ico">
								<span class="fa fa-home"></span>
							</div>
							<div class="card-title-c align-self-center">
								<h2 class="title-c">Un servicio</h2>
							</div>
						</div>
						<div class="card-body-c">
							<p class="content-c">Sed porttitor lectus nibh. Cras
								ultricies ligula sed magna dictum porta. Praesent sapien massa,
								convallis a pellentesque nec, egestas non nisi.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ Services End /-->

	<!--/ Property Star /-->
	<section class="section-property section-t8">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-wrap d-flex justify-content-between">
						<div class="title-box">
							<h2 class="title-a">Últimos agregados</h2>
						</div>
						<div class="title-link">
							<a href="property-grid.html">Todos los inmuebles <span
								class="ion-ios-arrow-forward"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div id="property-carousel" class="owl-carousel owl-theme">
				<div class="carousel-item-b">
					<div class="card-box-a card-shadow">
						<div class="img-box-a">
							<img src="resources/theme1/img/property-6.jpg" alt=""
								class="img-a img-fluid">
						</div>
						<div class="card-overlay">
							<div class="card-overlay-a-content">
								<div class="card-header-a">
									<h2 class="card-title-a">
										<a href="property-single.html">206 Mount <br /> Olive
											Road Two
										</a>
									</h2>
								</div>
								<div class="card-body-a">
									<div class="price-box d-flex">
										<span class="price-a">rent | $ 12.000</span>
									</div>
									<a href="#" class="link-a">Click here to view <span
										class="ion-ios-arrow-forward"></span>
									</a>
								</div>
								<div class="card-footer-a">
									<ul class="card-info d-flex justify-content-around">
										<li>
											<h4 class="card-info-title">Area</h4> <span>340m <sup>2</sup>
										</span>
										</li>
										<li>
											<h4 class="card-info-title">Beds</h4> <span>2</span>
										</li>
										<li>
											<h4 class="card-info-title">Baths</h4> <span>4</span>
										</li>
										<li>
											<h4 class="card-info-title">Garages</h4> <span>1</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item-b">
					<div class="card-box-a card-shadow">
						<div class="img-box-a">
							<img src="resources/theme1/img/property-3.jpg" alt=""
								class="img-a img-fluid">
						</div>
						<div class="card-overlay">
							<div class="card-overlay-a-content">
								<div class="card-header-a">
									<h2 class="card-title-a">
										<a href="property-single.html">157 West <br /> Central
											Park
										</a>
									</h2>
								</div>
								<div class="card-body-a">
									<div class="price-box d-flex">
										<span class="price-a">rent | $ 12.000</span>
									</div>
									<a href="property-single.html" class="link-a">Click here to
										view <span class="ion-ios-arrow-forward"></span>
									</a>
								</div>
								<div class="card-footer-a">
									<ul class="card-info d-flex justify-content-around">
										<li>
											<h4 class="card-info-title">Area</h4> <span>340m <sup>2</sup>
										</span>
										</li>
										<li>
											<h4 class="card-info-title">Beds</h4> <span>2</span>
										</li>
										<li>
											<h4 class="card-info-title">Baths</h4> <span>4</span>
										</li>
										<li>
											<h4 class="card-info-title">Garages</h4> <span>1</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item-b">
					<div class="card-box-a card-shadow">
						<div class="img-box-a">
							<img src="resources/theme1/img/property-7.jpg" alt=""
								class="img-a img-fluid">
						</div>
						<div class="card-overlay">
							<div class="card-overlay-a-content">
								<div class="card-header-a">
									<h2 class="card-title-a">
										<a href="property-single.html">245 Azabu <br /> Nishi
											Park let
										</a>
									</h2>
								</div>
								<div class="card-body-a">
									<div class="price-box d-flex">
										<span class="price-a">rent | $ 12.000</span>
									</div>
									<a href="property-single.html" class="link-a">Click here to
										view <span class="ion-ios-arrow-forward"></span>
									</a>
								</div>
								<div class="card-footer-a">
									<ul class="card-info d-flex justify-content-around">
										<li>
											<h4 class="card-info-title">Area</h4> <span>340m <sup>2</sup>
										</span>
										</li>
										<li>
											<h4 class="card-info-title">Beds</h4> <span>2</span>
										</li>
										<li>
											<h4 class="card-info-title">Baths</h4> <span>4</span>
										</li>
										<li>
											<h4 class="card-info-title">Garages</h4> <span>1</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item-b">
					<div class="card-box-a card-shadow">
						<div class="img-box-a">
							<img src="resources/theme1/img/property-10.jpg" alt=""
								class="img-a img-fluid">
						</div>
						<div class="card-overlay">
							<div class="card-overlay-a-content">
								<div class="card-header-a">
									<h2 class="card-title-a">
										<a href="property-single.html">204 Montal <br /> South
											Bela Two
										</a>
									</h2>
								</div>
								<div class="card-body-a">
									<div class="price-box d-flex">
										<span class="price-a">rent | $ 12.000</span>
									</div>
									<a href="property-single.html" class="link-a">Click here to
										view <span class="ion-ios-arrow-forward"></span>
									</a>
								</div>
								<div class="card-footer-a">
									<ul class="card-info d-flex justify-content-around">
										<li>
											<h4 class="card-info-title">Area</h4> <span>340m <sup>2</sup>
										</span>
										</li>
										<li>
											<h4 class="card-info-title">Beds</h4> <span>2</span>
										</li>
										<li>
											<h4 class="card-info-title">Baths</h4> <span>4</span>
										</li>
										<li>
											<h4 class="card-info-title">Garages</h4> <span>1</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ Property End /-->

	<!--/ Agents Star /-->
	<section class="section-agents section-t8">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-wrap d-flex justify-content-between">
						<div class="title-box">
							<h2 class="title-a">Inmobiliarias Destacadas</h2>
						</div>
						<div class="title-link">
							<a href="inmobiliarias">Todas las Inmobiliarias <span
								class="ion-ios-arrow-forward"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
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
								<p class="content-d color-text-a">${inmobiliarias.getDomicilio().getDireccion()}</p>
								<div class="info-agents color-a">
									<p>
										<strong>Teléfono: </strong>${inmobiliarias.getTelefono()}
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
</c:forEach>
			</div>
		</div>
	</section>
	<!--/ Agents End /-->

	<!-- Footer start -->
	<div><jsp:include page="/WEB-INF/views/Footer.jsp" /></div>
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
