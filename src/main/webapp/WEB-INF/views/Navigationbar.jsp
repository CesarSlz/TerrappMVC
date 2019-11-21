<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
							class="form-control form-control-lg form-control-a" id="bedrooms">
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
<nav
	class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
	<div class="container">
		<button class="navbar-toggler collapsed" type="button"
			data-toggle="collapse" data-target="#navbarDefault"
			aria-controls="navbarDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span></span> <span></span> <span></span>
		</button>



		<a class="navbar-brand text-brand" href="/terrapp"> <span
			class="card"> <img class="logo" src="resources/theme1/img/logo_cafe.png"
				alt="Card Back"> <img src="resources/theme1/img/logo_verde.png"
				class="logo img-top" alt="Card Front"> TERRA<span class="color-b2">pp</span>
		</span>
		</a>
		<button type="button"
			class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none"
			data-toggle="collapse" data-target="#navbarTogglerDemo01"
			aria-expanded="false">
			<span class="fa fa-search" aria-hidden="true"></span>
		</button>
		<div class="navbar-collapse collapse justify-content-center"
			id="navbarDefault">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/terrapp">Inicio</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/terrapp/nosotros">Nosotros</a></li>
				<li class="nav-item"><a class="nav-link" href="/terrapp/inmuebles">Inmuebles</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/terrapp/inmobiliarias">Inmobiliarias</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#signup" data-toggle="modal"
					data-target=".log-sign"
					style="color: #81BE1C;">Ingresar</a></li>
			</ul>
		</div>
		<button type="button"
			class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block"
			data-toggle="collapse" data-target="#navbarTogglerDemo01"
			aria-expanded="false">
			<span class="fa fa-search" aria-hidden="true"></span>
		</button>
	</div>
</nav>
<!--/ Nav End /-->

<!-- Modal -->
<div class="modal fade bs-modal-sm log-sign" id="myModal" tabindex="-1"
	role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">

			<div class="bs-example bs-example-tabs">
				<ul id="myTab" class="nav nav-tabs">
				<li id="tab1" class=" active tab-style login-shadow "><a class="loginbtn"
						href="#signin" data-toggle="tab">Ingresar</a></li>
					<li id="tab2" class=" tab-style "><a href="#signup"
						data-toggle="tab" class="loginbtn">Nuevo Usuario</a></li>

				</ul>
			</div>
			<div class="modal-body">
				<div id="myTabContent" class="tab-content">

					<div class="tab-pane fade active in show" id="signin">
						<form class="form-horizontal">
							<fieldset>
								<!-- Sign In Form -->
								<!-- Text input-->

								<div class="group">
									<input required="required" class="input" type="email"><span
										class="highlight"></span><span class="bar"></span> <label
										class="label" for="date">Correo Electrónico</label>
								</div>


								<!-- Password input-->
								<div class="group">
									<input required="required" class="input" type="password"><span
										class="highlight"></span><span class="bar"></span> <label
										class="label" for="date">Contraseña</label>
								</div>

								<!-- Button -->
								<div class="control-group">
									<label class="control-label" for="signin"></label>
									<div class="controls">
										<button id="signin" name="signin"
											class="btn btn-verde btn-block">Ingresar</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>

					<div class="tab-pane fade" id="signup">
						<form class="form-horizontal">
							<fieldset>
								<!-- Sign Up Form -->
								<!-- Text input-->
								<div class="group">
									<input required="required" class="input" type="text"><span
										class="highlight"></span><span class="bar"></span> <label
										class="label" for="date">Nombre</label>
								</div>

								<!-- Text input-->
								<div class="group">
									<input required="required" class="input" type="text"><span
										class="highlight"></span><span class="bar"></span> <label
										class="label" for="date">Apellidos</label>
								</div>

								<!-- Password input-->
								<div class="group">
									<input required="required" class="input" type="text"><span
										class="highlight"></span><span class="bar"></span> <label
										class="label" for="date">Celular</label>
								</div>

								<!-- Text input-->
								<div class="group">
									<input required="required" class="input" type="email"><span
										class="highlight"></span><span class="bar"></span> <label
										class="label" for="date">Correo Electrónico</label>
								</div>

								<div class="group">
									<input required="required" class="input" type="password"><span
										class="highlight"></span><span class="bar"></span> <label
										class="label" for="date">Contraseña</label>
								</div>

								<!-- Button -->
								<div class="control-group">
									<label class="control-label" for="confirmsignup"></label>
									<div class="controls">
										<button id="confirmsignup" name="confirmsignup"
											class="btn btn-verde btn-block">Registrarse</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
