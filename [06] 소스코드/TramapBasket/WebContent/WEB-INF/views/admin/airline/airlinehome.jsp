<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Aroma Shop - Home</title>

<!-- css삽입 -->
<%@ include file="/inc/css.jsp"%>

<style>
/*
    <th style="text-align:center;">항공사</th>
					<th style="text-align:center;">날짜</th>
					<th>출발시간</th>
					<th>도착시간</th>
					<th>좌석등급</th>
					<th>출발공항</th>
					<th>도착공항</th>
					<th>가격</th>
    */
#basketbtn {
	position: fixed;
	display: inline-block;
	right: 1%; /* 창에서 오른쪽 길이 */
	top: 15%; /* 창에서 위에서 부터의 높이 */
	background-color: transparent;
	margin: 0;
	display: inline-block;
}

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
}

.container {
	width: 1000px;
}

/* #tblAdd{ width: 1000px;}
	#tblAdd th{width:100px;}
	#tblAdd td{width: 600px;}
    
	#country1 {display: inline-block; height:20px;}
	#continent1 {display: inline-block;}
	
	#tblAdd{ margin-left:80px;}
	
	.select > continent1{display:inline-block;}
	
	.btns{float:right;}
 */

/* =========================  */
#pic {
	float: left;
	width: 80px;
	height: 80px;
	border: 1px solid #ddd;
	margin: 10px;
	margin-top: 4px;
	/* background-image: url(/myhome/pic/${pic}); */
	background-image: url(/project/asset/img/r2.jpg);
	/* 원래 폴더명은 Project01 이지만 경로상 project로해줘야함 */
	background-repeat: no-repeat;
	background-size: contain;
	background-position: center center;
}

.adminmenu {
	text-align: center;
	font-size: 25px;
	border-top: 1px solid #ccc;
	margin: 20px;
	padding: 30px;
}

/*====================table 리스트 */
#air {
	width: 900px;
	padding: 0px 40px 0px 20px;
}



#airboard {
	margin-left: 20px;
	margin-bottom: 20px;
}

#tem {
	color: #007bff;
}

#tblList {
	width: 860px;
}

th {
	text-align: center;
}

#tblList th:nth-child(1) {
	width: 100px;
}

#tblList th:nth-child(2) {
	width: 120px;
}

#tblList th:nth-child(3) {
	width: 120px;
}

#tblList th:nth-child(4) {
	width: 120px;
}

#tblList th:nth-child(5) {
	width: 100px;
}

#tblList td {
	text-align: center;
}

#search {
	width: 800px;
	margin: 15px auto;
	text-align: center;
}

#search select, #search input {
	display: inline-block;
}

#search #word {
	width: 300px;
}

#pagebar {
	text-align: center;
}
</style>
</head>
<body>
	<!--================ Start Header Menu Area =================-->
	<!-- 상단바 -->

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
								href="index.html">가이드</a></li>
							<li class="nav-item submenu dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">숙소</a>
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
								role="button" aria-haspopup="true" aria-expanded="false">도움말</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link"
										href="single-blog.html">Blog Details</a></li>
								</ul></li>
							<li class="nav-item submenu dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">커뮤니티</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
									<li class="nav-item"><a class="nav-link"
										href="register.html">Register</a></li>
									<li class="nav-item"><a class="nav-link"
										href="tracking-order.html">Tracking</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="contact.html">이벤트</a></li>
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


	<main class="site-main"> <!-- 페이지 우측 메뉴 바 -->
	<div id="basket">
		<!-- 우측 메뉴바 프로필부분 -->
		<div class="profile">

			<div id="pic"></div>
			<input type="button" value="정보관리" class="btn btn-default" onclick="">
			<div>
				<label>admin(administrator)</label>
			</div>
			<div>
				<label>관리자</label>
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
	

	<section class="section-margin calc-60px">
		<div class="container" style="border: 1px solid black;">
			<div class="section-intro pb-60px">
				<p></p>
				<h2 style="text-align: center;">항공사 / 항공 티켓 관리 페이지</h2>
			</div>

			<hr>

			<div class="row">


				<div id="airboard"
					style="border: 1px solid black; margin-left: 50px;">
					<%-- <jsp:include page="/inc/header.jsp"></jsp:include> --%>
					<section id="air">

						<h2 style="text-align: center; margin-bottom: 15px;">항공 티켓 목록</h2>


						<table id="tblList" class="table table-bordered long">
							<tr>
								<th style="text-align: center;">항공사</th>
								<th style="text-align: center;">날짜</th>
								<th>출발시간</th>
								<th>도착시간</th>
								<th>좌석등급</th>
								<th>출발공항</th>
								<th>도착공항</th>
								<th>가격</th>
							</tr>

							<c:if test="${vwatlist.size() == 0}">
								<tr>
									<td colspan="8">등록된 항공권이 없습니다.</td>
								</tr>
							</c:if>


							<c:forEach items="${vwatlist}" var="vwat">
								<!-- items 리스트명 , dto명 / 데이터넣을땐 dto명.~ -->
								<tr>
									<td style="color:#007bff; cursor:pointer;">${vwat.airline_name}</td>
									<td>${vwat.issuedate}</td>
									<td>${vwat.start_time}</td>
									<td>${vwat.arrive_time}</td>
									<td>${vwat.class_name}</td>
									<td>${vwat.start_airport}</td>
									<td>${vwat.arrive_airport}</td>
									<td>${vwat.price}</td>
								</tr>
							</c:forEach>
							<c:forEach items="${fklist}" var="fk">
								<!-- items 리스트명 , dto명 / 데이터넣을땐 dto명.~ -->
								<tr>
								<%-- ?seq=${dto.seq} --%>
									<td><a href="/project/admin/airline/edit.do?seq=${dto.faketicket_seq}">${fk.airline_name}</a></td>
									<td>${fk.issuedate}</td>
									<td>${fk.start_time}</td>
									<td>${fk.arrive_time}</td>
									<td>${fk.class_lv}</td>
									<td>${fk.start_airport}</td>
									<td>${fk.arrive_airport}</td>
									<td>${fk.price}</td>
								</tr>
							</c:forEach>
						</table>

						
						<div class="btns" style="float: right; margin-bottom: 20px;">
							<input class="btn btn-default" type="button" value="추가하기" class="control" onclick="location.href='/project/admin/airline/add.do';">
						</div>


					</section>
				</div>

			</div>
		</div>

	</section>

	</main>


	<!--================ Start footer Area  =================-->
	<!-- <footer class="footer">
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
								<li><a href="#">Shop</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">Product</a></li>
								<li><a href="#">Brand</a></li>
								<li><a href="#">Contact</a></li>
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
						Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
					</p>
				</div>
			</div>
		</div>
	</footer> -->
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp"%>
	<!-- 이곳 -->

	<script>
		/* var bt = 0;
		$("#basketbtn").click(function(){
			if(bt==0){
				$("#basket").css("display","none");
				$("#basketbtn i").attr("class", "ti-arrow-circle-left");
				bt = 1;
			}else if(bt==1){
				$("#basket").css("display","inline-block");
				$("#basketbtn i").attr("class", "ti-arrow-circle-right");
				bt = 0;
			}
		}); */
	</script>
</body>

</html>