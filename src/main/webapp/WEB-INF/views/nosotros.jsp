<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>TERRApp</title>
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

	<!--/ Intro Single star /-->
	<section class="intro-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-8">
					<div class="title-single-box">
						<h1 class="title-single">El lugar de tu Sueños</h1>
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/terrapp/">Inicio</a></li>
							<li class="breadcrumb-item active" aria-current="page">
								Nosotros</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--/ Intro Single End /-->

	<!--/ About Star /-->
	<section class="section-about">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="about-img-box">
						<img src="/terrapp/resources/theme1/img/slide-about-1.jpg" alt=""
							class="img-fluid">
					</div>
					<div class="sinse-box">
						<h3 class="sinse-title">TERRApp</h3>
						<p>Administra tu Inmobiliaria</p>
					</div>
				</div>
				<div class="col-md-12 section-t8">
					<div class="row">
						<div class="col-md-6 col-lg-5">
							<img src="/terrapp/resources/theme1/img/terrapp.jpg" alt="" class="img-fluid">
						</div>
						<div class="col-lg-2  d-none d-lg-block">
							<div class="title-vertical d-flex justify-content-start">
								<span><span class="color-a exofont">TERRA</span><span
									class="color-b exofont">pp</span> <br> Inmobiliaria</span>
							</div>
						</div>
						<div class="col-md-6 col-lg-5 section-md-t3">
							<div class="title-box-d">
								<h3 class="title-d">
									Mision <span class="color-d">, </span> visión <span
										class="color-d">y</span> <br> valores.
								</h3>
							</div>
							<p class="color-text-a">Valoramos el trabajo en
								equipo y la colaboración entre las diferentes disciplinas para
								mejorar en lo que hacemos. nuestro Equipo de profesionales
								inmobiliarios están comprimetidos con la orgaizacion y siguen
								los siguientes valores:
								</p>
							<ul>
								<li>Calidad: entregamos siempre lo mejor y buscamos superar
									expectativas</li>
								<li>Integridad: Nos comportamos en los estándares éticos
									más altos, demostrando honestidad y justicia en cada acción y
									descición</li>
								<li>Agilidad: Actuamos de manera inmediata para solucionar
									las necesidades del cliente</li>
								<li>Determinación: Tomamos decisiones y actuamos buscando
									los mejores intereses de nuestros clientes</li>
								<li>Respeto y confianza: Tratamos a nuestros clientes y
									ente nosotros con digidad y respeto en todo momento</li>
							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ About End /-->

	<!--/ Team Star /-->
	<section class="section-agents section-t8">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-wrap d-flex justify-content-between">
						<div class="title-box">
							<h2 class="title-a">Nuestro Equipo</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="card-box-d">
						<div class="card-img-d">
							<img src="/terrapp/resources/theme1/img/agent-7.jpg" alt="" class="img-d img-fluid">
						</div>
						<div class="card-overlay card-overlay-hover">
							<div class="card-header-d">
								<div class="card-title-d align-self-center">
									<h3 class="title-d">
									Margaret Sotillo <br> Escala
									</h3>
								</div>
							</div>
							<div class="card-body-d">
								<p class="content-d color-text-a">Sed porttitor lectus nibh,
									Cras ultricies ligula sed magna dictum porta two.</p>
								<div class="info-agents color-a">
									<p>
										<strong>Phone: </strong> +54 356 945234
									</p>
									<p>
										<strong>Email: </strong> agents@example.com
									</p>
								</div>
							</div>
							<div class="card-footer-d">
								<div class="socials-footer d-flex justify-content-center">
									<ul class="list-inline">
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-facebook" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-twitter" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-instagram" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-pinterest-p" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-dribbble" aria-hidden="true"></i>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card-box-d">
						<div class="card-img-d">
							<img src="/terrapp/resources/theme1/img/agent-6.jpg" alt="" class="img-d img-fluid">
						</div>
						<div class="card-overlay card-overlay-hover">
							<div class="card-header-d">
								<div class="card-title-d align-self-center">
									<h3 class="title-d">
									Stiven Spilver <br> Darw
									</h3>
								</div>
							</div>
							<div class="card-body-d">
								<p class="content-d color-text-a">Sed porttitor lectus nibh,
									Cras ultricies ligula sed magna dictum porta two.</p>
								<div class="info-agents color-a">
									<p>
										<strong>Phone: </strong> +54 356 945234
									</p>
									<p>
										<strong>Email: </strong> agents@example.com
									</p>
								</div>
							</div>
							<div class="card-footer-d">
								<div class="socials-footer d-flex justify-content-center">
									<ul class="list-inline">
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-facebook" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-twitter" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-instagram" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-pinterest-p" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-dribbble" aria-hidden="true"></i>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card-box-d">
						<div class="card-img-d">
							<img src="/terrapp/resources/theme1/img/agent-5.jpg" alt="" class="img-d img-fluid">
						</div>
						<div class="card-overlay card-overlay-hover">
							<div class="card-header-d">
								<div class="card-title-d align-self-center">
									<h3 class="title-d">
										Emma Toledo <br>Cascada
									</h3>
								</div>
							</div>
							<div class="card-body-d">
								<p class="content-d color-text-a">Sed porttitor lectus nibh,
									Cras ultricies ligula sed magna dictum porta two.</p>
								<div class="info-agents color-a">
									<p>
										<strong>Phone: </strong> +54 356 945234
									</p>
									<p>
										<strong>Email: </strong> agents@example.com
									</p>
								</div>
							</div>
							<div class="card-footer-d">
								<div class="socials-footer d-flex justify-content-center">
									<ul class="list-inline">
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-facebook" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-twitter" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-instagram" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-pinterest-p" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-dribbble" aria-hidden="true"></i>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ Team End /-->

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
