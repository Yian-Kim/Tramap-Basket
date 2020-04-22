<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- inc > header.jsp -->
<header class="header_area">
	<div class="main_menu">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand logo_h" href="index.html"><img
					src="/project/asset/img/logo.png" alt=""></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse offset"
					id="navbarSupportedContent">
					<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
						<li class="nav-item active"><a class="nav-link"
							href="index.html">Home</a></li>
						<li class="nav-item submenu dropdown"><a href="#"
							class="nav-link dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
							<ul class="dropdown-menu">
								<li class="nav-item"><a class="nav-link"
									href="category.html">Shop Category</a></li>
								<li class="nav-item"><a class="nav-link"
									href="single-product.html">Product Details</a></li>
								<li class="nav-item"><a class="nav-link"
									href="checkout.html">Product Checkout</a></li>
								<li class="nav-item"><a class="nav-link"
									href="confirmation.html">Confirmation</a></li>
								<li class="nav-item"><a class="nav-link" href="cart.html">Shopping
										Cart</a></li>
							</ul></li>
						<li class="nav-item submenu dropdown"><a href="#"
							class="nav-link dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
							<ul class="dropdown-menu">
								<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
								<li class="nav-item"><a class="nav-link"
									href="single-blog.html">Blog Details</a></li>
							</ul></li>
						<li class="nav-item submenu dropdown"><a href="#"
							class="nav-link dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
							<ul class="dropdown-menu">
								<li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
								<li class="nav-item"><a class="nav-link"
									href="register.html">Register</a></li>
								<li class="nav-item"><a class="nav-link"
									href="tracking-order.html">Tracking</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
					</ul>

					<ul class="nav-shop">
			            <c:if test="${!empty loginCheck }">
			              <li class="nav-item"><button onclick="location.href='/project/member/ybh/ybhMypage.do';"><i class="ti-search"></i></button></li>
			              <li class="nav-item"><button><i class="ti-settings"></i></button> </li>
			              <li class="nav-item"><a class="button button-header" href="/project/member/ybh/ybhLogout.do">Logout</a></li>
			            </c:if>
			            <c:if test="${empty loginCheck }">
			              <li class="nav-item"><a class="button button-header" href="/project/member/ybh/ybhLogin.do"
			              	onclick="window.open(this.href, '_blank', 'width=400,height=300,toolbars=no,scrollbars=no,left=700, top=50'); return false;">Login</a></li>
			              	
			            </c:if>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</header>