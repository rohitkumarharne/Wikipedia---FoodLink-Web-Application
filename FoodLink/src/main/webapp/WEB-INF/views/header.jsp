<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary"> -->
<!--     <div class="container"> -->
<!--         Logo -->
<!--         <a class="navbar-brand" href="#"> -->
<!--             <img src="resources/img/Foodlink_logo.png" -->
<!--                  alt="Foodlink Logo" class="img-fluid" style="width: 150;px"> -->
<!--         </a> -->

<!--         Navbar Toggler -->
<!--         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" -->
<!--                 aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"> -->
<!--             <span class="navbar-toggler-icon"></span> -->
<!--         </button> -->

<!--         Navbar Items -->
<!--         <div class="collapse navbar-collapse" id="navbarNav"> -->
<!--             <ul class="navbar-nav ms-auto"> -->
<!--                 <li class="nav-item"><a class="nav-link text-white fw-bold" href="home">Home</a></li> -->
<!--                 <li class="nav-item dropdown"> -->
<!--                     <a class="nav-link dropdown-toggle text-white fw-bold" href="#" id="aboutDropdown" -->
<!--                        role="button" data-bs-toggle="dropdown" aria-expanded="false">About Us</a> -->
<!--                     <ul class="dropdown-menu"> -->
<!--                         <li><a class="dropdown-item" href="organization">Know Your Organization</a></li> -->
<!--                         <li><a class="dropdown-item" href="founder">Know Your Founder</a></li> -->
<!--                         <li><a class="dropdown-item" href="leader">Know Your Leader</a></li> -->
<!--                         <li><a class="dropdown-item" href="department">Know Your Department</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
<!--                  <li class="nav-item dropdown"> -->
<!--                     <a class="nav-link dropdown-toggle text-white fw-bold" href="#" id="aboutDropdown" -->
<!--                        role="button" data-bs-toggle="dropdown" aria-expanded="false">Guidelines</a> -->
<!--                     <ul class="dropdown-menu"> -->
<!--                         <li><a class="dropdown-item" href="#">Sop/Policies</a></li> -->
<!--                         <li><a class="dropdown-item" href="#">Manuals</a></li> -->
<!--                         <li><a class="dropdown-item" href="#">Standard Product Specification</a></li> -->
<!--                         <li><a class="dropdown-item" href="#">Standard Recipe Specification</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
<!--                 <li class="nav-item"><a class="nav-link text-white fw-bold" href="login">Login</a></li> -->
<!--                             <li class="nav-item"><a class="nav-link text-white fw-bold" href="logout">logout</a></li> -->

<!--             </ul> -->
<!--         </div> -->
<!--     </div> -->
<!-- </nav> -->



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container">
		<!-- Logo -->
		<a class="navbar-brand" href="#"> <img
			src="resources/img/Foodlink_logo.png" alt="Foodlink Logo"
			class="img-fluid" style="width: 150px;">
		</a>

		<!-- Navbar Toggler -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Navbar Items -->
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item"><a class="nav-link text-white fw-bold"
					href="home">Home</a></li>

				<!-- About Us Dropdown -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-white fw-bold" href="#"
					id="aboutDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false">About Us</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="organization">Know
								Your Organization</a></li>
						<li><a class="dropdown-item" href="founder">Know Your
								Founder</a></li>
						<li><a class="dropdown-item" href="leader">Know Your
								Leader</a></li>
						<li><a class="dropdown-item" href="department">Know Your
								Department</a></li>
					</ul></li>

				<!-- Guidelines Dropdown -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-white fw-bold" href="#"
					id="guidelinesDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false">Guidelines</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">Sop/Policies</a></li>
						<li><a class="dropdown-item" href="#">Manuals</a></li>
						<li><a class="dropdown-item" href="#">Standard Product
								Specification</a></li>
						<li><a class="dropdown-item" href="#">Standard Recipe
								Specification</a></li>
					</ul></li>

				<!-- Dynamic Login/Logout -->
				<c:choose>
					<c:when test="${not empty sessionScope.uid}">
						<!-- If session is active, show Logout -->
						<%--              <li class="nav-item"><a class="nav-link text-white fw-bold" href="#">${sessionScope.user}</a></li> --%>

						<!--                         <li class="nav-item"><a class="nav-link text-white fw-bold" href="logout">Logout</a></li> -->


						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-white fw-bold" href="#"
							id="guidelinesDropdown" role="button" data-bs-toggle="dropdown"
							style aria-expanded="false">${sessionScope.user}</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="logout">Logout</a></li>
							</ul></li>




					</c:when>
					<c:otherwise>
						<!-- If session is inactive, show Login -->
						<li class="nav-item"><a class="nav-link text-white fw-bold"
							href="login">Login</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>
