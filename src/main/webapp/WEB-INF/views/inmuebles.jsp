<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Inmuebles</title>
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
	<!--/ Nav Star /-->
	<div><jsp:include page="/WEB-INF/views/Navigationbar.jsp" /></div>
	<!--/ Nav End /-->


	<!--/ Intro Single star /-->
	<section class="intro-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-8">
					<div class="title-single-box">
						<h1 class="title-single">Nuestros inmuebles</h1>
						<span class="color-text-a">Lista de inmuebles</span>
					</div>
				</div>
				<!--  -->
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Volver al inicio</a>
							</li>
							<li class="breadcrumb-item active" aria-current="page">
								Lista de inmuebles</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--/ Intro Single End /-->

	<!--/ Property Grid Star /-->
	<section class="property-grid grid">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="grid-option">
						<form>
							<select class="custom-select">
								<option selected>Todas</option>
								<option value="1">Más recientes</option>
								<option value="2">Renta</option>
								<option value="3">Venta</option>
							</select>
						</form>
					</div>
				</div>
				<c:forEach var="propiedad" items="${propiedad}">
					<div class="col-md-4">
						<div class="card-box-a card-shadow">
							<div class="img-box-a">
								<img src="${propiedad.getFotos().iterator().next().getUrl()}"
									alt="" class="img-a img-fluid-2 center">
							</div>
							<div class="card-overlay">
								<div class="card-overlay-a-content">
									<div class="card-header-a">
										<h2 class="card-title-a">
											<a href="#">${propiedad.getDomicilio().getCalle()} <br />${propiedad.getDomicilio().getNumeroExt()}</a>
										</h2>
									</div>
									<div class="card-body-a">
										<c:if test="${propiedad.getVenta()!=null}">
											<div class="price-box d-flex">
												<span class="price-a">venta |
													$${propiedad.getVenta().getMonto()}</span>
											</div>
										</c:if>
										<c:if test="${propiedad.getRenta()!=null}">
											<div class="price-box d-flex">
												<span class="price-a">renta |
													$${propiedad.getRenta().getMonto()} </span>
											</div>
										</c:if>
										<a href="property-single.html" class="link-a">Click aquí
											para ver más <span class="ion-ios-arrow-forward"></span>
										</a>
									</div>
									<div class="card-footer-a">
										<ul class="card-info d-flex justify-content-around">
											<li>
												<h4 class="card-info-title">Área</h4> <span>${propiedad.getAreaConstruccion()}m
													<sup>2</sup>
											</span>
											</li>
											<c:choose>
												<c:when test="${propiedad.getCasa()!=null}">
													<li>
														<h4 class="card-info-title">🛏️</h4> <span>${propiedad.getCasa().getRecamara()}</span>
													</li>
													<li>
														<h4 class="card-info-title">🚿</h4> <span>${propiedad.getCasa().getBano()}</span>
													</li>
													<li>
														<h4 class="card-info-title">🚗</h4> <span>${propiedad.getCasa().getEstacionamiento()}</span>
													</li>
												</c:when>
												<c:when test="${propiedad.getDepartamento()!=null}">
													<li>
														<h4 class="card-info-title">🛏️</h4> <span>${propiedad.getDepartamento().getRecamara()}</span>
													</li>
													<li>
														<h4 class="card-info-title">🚿</h4> <span>${propiedad.getDepartamento().getBano()}</span>
													</li>
													<li>
														<h4 class="card-info-title">🚗</h4> <span>${propiedad.getDepartamento().getEstacionamiento()}</span>
													</li>
												</c:when>
											</c:choose>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<!--
      <div class="row">
        <div class="col-sm-12">
          <nav class="pagination-a">
            <ul class="pagination justify-content-end"> 
              <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">
                  <span class="ion-ios-arrow-back"></span>
                </a>
              </li> 
             <li class="page-item">
                <a class="page-link" href="#">1</a>
              </li>
              <li class="page-item">
                <a class="page-link" href="#">2</a>
              </li>
              <li class="page-item">
                <a class="page-link" href="#">3</a>
              </li>
              <li class="page-item next">
                <a class="page-link" href="#">
                  <span class="ion-ios-arrow-forward"></span>
                </a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
       !-->
		</div>
	</section>
	<!--/ Property Grid End /-->


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
