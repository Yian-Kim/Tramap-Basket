<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>TraMap Basket</title>

<!-- css삽입 -->
<%@ include file="/inc/css.jsp"%>
<style>
#basketbtn i {
	font-size: 30px;
}

#basket {
	position: fixed;
	width: 15%;
	display: inline-block;
	right: 1%; /* 창에서 오른쪽 길이 */
	top: 20%; /* 창에서 위에서 부터의 높이 */
	background-color: transparent;
	margin: 0;
	border: 1px solid black;
	border-radius: 5px;
	height: 600px;
	/* overflow-y: scroll; */
}

#tblView {
	text-align: center;
}

.adminmenu {
	text-align: center;
	font-size: 25px;
	border-top: 1px solid #ccc;
	margin: 20px;
	padding: 30px;
}

#profilename, #profilelevel {
	text-align: center;
}

.container {
	width: 900px;
}

#tblView th {
	width: 150px;
}

#tblView td {
	width: 650px;
}

.picture {
	float: left;
	width: 250px;
	height: 200px;
	margin: 10px;
	margin-top: 4px;
	background-repeat: no-repeat;
	background-size: contain;
	background-position: center center;
}

.pic {
	width: 100px;
	height: 80px;
	margin-left: 15px;
	background-repeat: no-repeat;
	background-size: contain;
	background-position: center center;
}

#country1 {
	display: inline-block;
	height: 20px;
}

#continent1 {
	display: inline-block;
}

.select>continent1 {
	display: inline-block;
}

.headname {
	margin: 10px;
}

.btns {
	margin: 0 20 20 0;
}
</style>
<script type="text/javascript">
	$('document')
			.ready(
					function() {
						var area0 = [ "대륙 선택", "동남아", "동북아", "유럽", "대양주", "북미",
								"남미" ];
						var area1 = [ "태국", "필리핀", "베트남", "라오스", "미얀마" ];
						var area2 = [ "대만", "북경", "상해", "도쿄", "" ];
						var area3 = [ "프라하", "마드리드", "파리", "런던", "이스탄불" ];
						var area4 = [ "괌", "시드니", "오클랜드" ];
						var area5 = [ "뉴욕", "로스앤제레스", "시카고", "밴쿠버" ];
						var area6 = [ "브라질", "페루", "아르헨티나", "베네수엘라" ];

						// 시/도 선택 박스 초기화

						$("select[name^=continent]")
								.each(
										function() {
											$selcontinent = $(this);
											$
													.each(
															eval(area0),
															function() {
																$selcontinent
																		.append("<option value='"+this+"'>"
																				+ this
																				+ "</option>");
															});
											$selcontinent
													.next()
													.append(
															"<option value=''>나라 선택</option>");
										});

						// 시/도 선택시 구/군 설정

						$("select[name^=continent]")
								.change(
										function() {
											var area = "area"
													+ $("option", $(this))
															.index(
																	$(
																			"option:selected",
																			$(this))); // 선택지역의 구군 Array
											var $country = $(this).next(); // 선택영역 나라 객체
											$("option", $country).remove(); // 나라 초기화

											if (area == "area0")
												$gugun
														.append("<option value=''>구/군 선택</option>");
											else {
												$
														.each(
																eval(area),
																function() {
																	$gugun
																			.append("<option value='"+this+"'>"
																					+ this
																					+ "</option>");
																});
											}
										});

					});
</script>
</head>
<body>
	<!--================ Start Header Menu Area =================-->
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
			              <li class="nav-item"><button onclick="location.href='/project/admin/hotel/hotellist.do';"><i class="ti-settings"></i></button> </li>
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
	<!--================ End Header Menu Area =================-->


	<main class="site-main"> <!-- 페이지 우측 메뉴 바 -->
	<div id="basket">
		<!-- 우측 메뉴바 프로필부분 -->
		<div class="profile">
			<div class="container">
				<div class="row">
					<div class="pic"
						style="background-image: url(/project/asset/img/r9.jpg);"></div>
				</div>
				<div id="profilename">
					<label>관일장(guan)</label>
				</div>
				<div id="profilelevel">
					<label>관리자</label>
				</div>
				<input type="button" value="정보관리" class="btn btn-default" onclick="">

			</div>
		</div>
		<!-- 우측 메뉴바 메뉴부분 -->
		<div class="adminmenu" >
    		<div><a href="/project/admin/airline/airlinehome.do">항공 관리</a></div>
    		<div><a href="/project/admin/country/countryhome.do">나라 관리</a></div>
    		<div><a href="/project/admin/tourspot/tourspothome.do">관광지 관리</a></div>
    		<div><a href="/project/admin/hotel/hotellist.do">숙박 관리</a></div>
    		<div><a href="/project/admin/theme/themehome.do">테마 관리</a></div>
    		<div><a href="/project/admin/member/memberlist.do">회원 관리</a></div>
    	</div>
	</div>


	<!-- ================ Blog section start ================= -->
	<section class="section-margin calc-60px">
		<div class="container" style="border: 1px solid black; width: 900px;">
			<div class="container" style="width: 800px;">
				<div class="row">
					<div class="section-intro pb-60px" style="">
						<h2 class="headname">
							호텔<span class="section-intro__style">상세보기</span>
						</h2>
					</div>
					<div style="width: 480px;"></div>
					
				</div>

				<table id="tblView" class="table table-bordered">

					<tr>
						<td rowspan="4">
								
								<div class="picture"
						style="background-image: url(/project/asset/img/tourspot/${dto.picture});"></div></td>
								
					</tr>
					<tr>
						<td>호텔명</td>
						<td>${dto.name}</td>
					</tr>
					<tr>
						<td>경도</td>
						<td>${dto.lat}</td>
					</tr>
					<tr>

						<td>위도</td>
						<td>${dto.lng}</td>
					</tr>
					<tr>
						<td colspan="1">설명</td>
						<td colspan="2">${dto.description}</td>
					</tr>
					<tr>
						<td colspan="1">근처 관광지</td>
						<td colspan="2">${dto.touristspot_name}</td>
					</tr>
				</table>

				<div class="container" style="width: 800px;">
						
					<div class="btns"
						style="border: 0px solid black;
								 height: 100px; 
								 margin-top: 40px;
								 margin-left:475px;"
					>
						
						<div style="display: inline-block; margin-bottom: 10px;">
							<input type="button" value="돌아가기" class="btn btn-default"
								onclick="location.href='/project/admin/hotel/hotellist.do';">
						</div>
						
						<input type="submit" value="수정하기" class="btn btn-default" 
							onclick="location.href='/project/admin/hotel/edit.do?hotel_seq=${dto.hotel_seq}';">
						<input type="submit" value="삭제하기" class="btn btn-default" 
							onclick="location.href='/project/admin/hotel/del.do?hotel_seq=${dto.hotel_seq}';">
						
					</div>
				
				</div>
			</div>
	</section>

	<!-- ================ Blog section end ================= --> <!-- ================ Subscribe section start ================= -->
	<!--  <section class="subscribe-position">
      <div class="container">
        <div class="subscribe text-center">
          <h3 class="subscribe__title">Get Update From Anywhere</h3>
          <p>Bearing Void gathering light light his eavening unto dont afraid</p>
          <div id="mc_embed_signup">
            <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe-form form-inline mt-5 pt-1">
              <div class="form-group ml-sm-auto">
                <input class="form-control mb-1" type="email" name="EMAIL" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" >
                <div class="info"></div>
              </div>
              <button class="button button-subscribe mr-auto mb-1" type="submit">Subscribe Now</button>
              <div style="position: absolute; left: -5000px;">
                <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
              </div>

            </form>
          </div>
          
        </div>
      </div>
    </section> --> <!-- ================ Subscribe section end ================= -->



	</main>


	<!--================ Start footer Area  =================-->
	<footer class="footer">
		<div class="footer-area">
			<div class="container">
				<div class="row section_gap">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title large_title">Our Mission</h4>
							<p>So seed seed green that winged cattle in. Gathering thing
								made fly you're no divided deep moved us lan Gathering thing us
								land years living.</p>
							<p>So seed seed green that winged cattle in. Gathering thing
								made fly you're no divided deep moved</p>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">Quick Links</h4>
							<ul class="list">
								<li><a href="#">Home</a></li>
								<li><a href="#">호텔</a></li>
								<li><a href="#">나라</a></li>
								<li><a href="#">관광지</a></li>
								<li><a href="#">가이드</a></li>
								<li><a href="#">고객센터</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget instafeed">
							<h4 class="footer_title">Gallery</h4>
							<ul class="list instafeed d-flex flex-wrap">
								<li><img src="/project/asset/img/gallery/r1.jpg" alt=""></li>
								<li><img src="/project/asset/img/gallery/r2.jpg" alt=""></li>
								<li><img src="/project/asset/img/gallery/r3.jpg" alt=""></li>
								<li><img src="/project/asset/img/gallery/r5.jpg" alt=""></li>
								<li><img src="/project/asset/img/gallery/r7.jpg" alt=""></li>
								<li><img src="/project/asset/img/gallery/r8.jpg" alt=""></li>
							</ul>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">Contact Us</h4>
							<div class="ml-40">
								<p class="sm-head">
									<span class="fa fa-location-arrow"></span> Head Office
								</p>
								<p>123, Main Street, Your City</p>

								<p class="sm-head">
									<span class="fa fa-phone"></span> Phone Number
								</p>
								<p>
									+123 456 7890 <br> +123 456 7890
								</p>

								<p class="sm-head">
									<span class="fa fa-envelope"></span> Email
								</p>
								<p>
									free@infoexample.com <br> www.infoexample.com
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="row d-flex">
					<p class="col-lg-12 footer-text text-center">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp"%>
	<!-- 이곳 -->


</body>

</html>