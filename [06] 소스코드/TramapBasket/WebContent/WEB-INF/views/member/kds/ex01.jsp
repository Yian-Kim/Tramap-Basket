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
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDb6ivJQnFURrcBiaJykTTvWHoNvG7c3fI">
	</script>
<%@ include file="/inc/css.jsp"%>
<script>
  var m; //현재 등록중인 마커 객체
  var ctemp;
  var map;
  var myCenter=new google.maps.LatLng(13.690842, 100.750008);

  var c${status.index}; // c0,c1,c2
  var iwContent${status.index};
  var infoindow${status.index};
   
  function initialize(){
  	var mapProp = {
  	  center:myCenter,
  	  zoom:14,
  	  mapTypeId:google.maps.MapTypeId.ROADMAP
   	 };
   
  	  map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
  	 
  	  google.maps.event.addListener(map, 'click', function(event) {
  	    placeMarker(event.latLng);
  	 
  	  });
  	  
			/*  placeMarker(new google.maps.LatLng(13.690267, 100.750016)); */
	  	<c:forEach items="${list}" var="dto" varStatus="status">
			 placeMarker(new google.maps.LatLng(${dto.lat}, ${dto.lng}), "${dto.name}");  
			/* placeMarker(new google.maps.LatLng(${list3[status.index].lat}, ${list3[status.index].lng}));
			 placeMarker(new google.maps.LatLng(${list3[status.index+1].lat}, ${list3[status.index+1].lng}));  */
		</c:forEach>
		/* placeMarker(new google.maps.LatLng(13.690267, 100.750016)); */
  }

     
  /* 마커 찍힘 */
   function placeMarker(location, name) {
    var marker = new google.maps.Marker({
      position: location,
      map: map,
     
    });
    
    var infowindow = new google.maps.InfoWindow({
		//content: '위도: ' + location.lat() + '<br>경도: ' + location.lng()
		content: name
	}); 
	infowindow.open(map, marker);
    
    
  }
  
	 
   
  google.maps.event.addDomListener(window, 'load', initialize);

  /* -이동-----------------------------------------------------------  */ 
  




  /* -이동-----------------------------------------------------------  */ 
  function sel(lat,lng){
  	   zoom:16,
  	   map.panTo(new google.maps.LatLng(lat,lng));
  	   
  }
	
  $(function(){
		
	
  
		
	  /* var modalLayer = $("#modalLayer");
	  var modalLink = $(".modalLink");
	  var modalCont = $(".modalContent");
	  var marginLeft = modalCont.outerWidth()/2;
	  var marginTop = modalCont.outerHeight()/2; 

	  modalLink.click(function(){
	    modalLayer.fadeIn("slow");
	    modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
	    $(this).blur();
	    $(".modalContent > a").focus(); 
	    return false;
	  });
	  */
	  $(".modalContent > button").click(function(){
	    $(this).parent().parent().fadeOut("slow");
	    modalLink.focus();
	  }); 		
  });

function showModal(index) {
	$("#modalLayer" + index).fadeIn("slow");
	var marginLeft = $("#modalLayer" + index).children().first().outerWidth()/2;
	var marginTop = $("#modalLayer" + index).children().first().outerHeight()/2; 
	$("#modalLayer" + index).children().first().css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
    $(this).blur();
    
    return false;
}




function cAll() {
    if ($("#checkAll").is(':checked')) {
        $("input[type=checkbox]").prop("checked", true);
    } else {
        $("input[type=checkbox]").prop("checked", false);
    }
}




function drag(target, food) {		//드래그 시작시 호출 할 함수
	food.dataTransfer.setData('Text', target.id);
};
function drop(target, food) {		//드롭시 호출 할 함수
	var id = food.dataTransfer.getData('Text');
	target.appendChild(document.getElementById(id));
	food.preventDefault();	
};
 </script>
<!-- css삽입 -->
<%@ include file="/inc/css.jsp"%>

<style>
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
	width: 18.5%;
	display: inline-block;
	right: 1%; /* 창에서 오른쪽 길이 */
	top: 20%; /* 창에서 위에서 부터의 높이 */
	background-color: transparent;
	margin: 0;
	margin-top: 15px;
	border: 1px solid black;
	border-radius: 5px;
	height: 600px;
	overflow-y: scroll;
}

div.left {
	width: 60%;
	float: left;
	box-sizing: border-box;
}

div.right {
	width: 30%;
	float: right;
	box-sizing: border-box;
}

a {
	color: #000;
}

.mask {
	width: 100%;
	height: 100%;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 10;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
}

.modalLayer {
	display: none;
	position: absolute;
}

.modalLayer .modalContent {
	width: 1000px;
	height: 500px;
	padding: 20px;
	border: 1px solid #ccc;
	position: fixed;
	display: inline-block;
	left: 50%;
	top: 50%;
	z-index: 11;
	background: #fff;
}

.modalLayer .modalContent button {
	position: absolute;
	right: 0;
	top: 0;
	cursor: pointer;
}

input[type=button], input[type=submit], input[type=reset] {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 16px 15px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

a.tooltips {
	position: relative;
	display: inline;
}

a.tooltips span {
	position: absolute;
	width: 200px;
	color: #FFFFFF;
	background: #000000;
	height: 30px;
	line-height: 30px;
	text-align: center;
	display: none;
	border-radius: 6px;
}

a.tooltips span:after {
	content: '';
	position: absolute;
	top: 100%;
	left: 50%;
	margin-left: -8px;
	width: 0;
	height: 0;
	border-top: 8px solid #000000;
	border-right: 8px solid transparent;
	border-left: 8px solid transparent;
}

a:hover.tooltips span {
	display: block;
	opacity: 0.8;
	bottom: 30px;
	left: 50%;
	margin-left: -58px;
	z-index: 999;
}
</style>

</head>
<body onload="initialize()">
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
	<!--================ End Header Menu Area =================-->



	<main class="site-main">

	<div id="basketbtn">
		<i class="ti-arrow-circle-right" /></i>
	</div>
	<div id="basket">
		<center>
			<h1>장바구니</h1>
		</center>
		<center>
			<h2>1일차</h2>
		</center>
		<div ondragover="return false;" ondragenter="return false;" class="fl"
			ondrop="drop(this, event);"
			style="width: 250px; height: 150px; overflow: auto; margin: auto; padding-top: 15px;">
		</div>
		<center>
			<h2>2일차</h2>
		</center>
		<div ondragover="return false;" ondragenter="return false;" class="fl"
			ondrop="drop(this, event);"
			style="width: 250px; height: 150px; overflow: auto; margin: auto; padding-top: 15px;">
		</div>
		<center>
			<h2>3일차</h2>
		</center>
		<div ondragover="return false;" ondragenter="return false;" class="fl"
			ondrop="drop(this, event);"
			style="width: 250px; height: 150px; overflow: auto; margin: auto; padding-top: 15px;">
		</div>
	</div>



	<!-- ================ Blog section start ================= -->
	<section class="blog">
		<div class="container" style="border: 3px solid black;">
			<center>
				<h1>숙소 정하기</h1>
			</center>
			<br>
			<div class="container" id="googleMap"
				style="width: 1000px; height: 450px; margin-left: 48px;"></div>



			<center>
				<h1>숙소</h1>
			</center>
			<br>

			<div class="left" ondragover="return false;"
				ondragenter="return false;" ondrop="drop(this, event);"
				style="width: 628px; height: 300px; margin-left: 48px; margin-bottom: 10px; overflow: auto;">




				<c:forEach items="${list}" var="dto" varStatus="status">
					<%-- <div class="item label label-danger"
			style="padding: 5px 10px; cursor: pointer;"
			onclick="sel(${dto.lat},${dto.lng});">${dto.name}</div> --%>


					<a href="#modalLayer${status.index}" class="modalLink tooltips"
						onclick="showModal(${status.index});">
						<div ondragstart="drag(this, event)" id="${dto.picture}"
							alt="호텔숙소" draggable="true" style="padding-top: 10px;">
							<img src="/project/asset/img/hotel/${dto.picture}"
								draggable="true"
								style="width: 100px; height: 70px; margin-left: 10px; padding-bottom: 10px; display: inline-block;"><span>${dto.name}</span>
					</a>
					<div class="item "
						style="padding: 5px 10px; display: inline-block; cursor: pointer;"
						onclick="sel(${dto.lat},${dto.lng});">
						<input type="checkbox" id="check1" onclick="cAlll();">
						&nbsp;<span style="font-size: 15px; font-weight: bold">${dto.name}</span>
					</div>
			</div>
			<div id="modalLayer${status.index}" class="modalLayer">
				<div class="modalContent">
					<%-- <a href="#">
				<img src="/project/asset/img/hotel/${dto.picture}" style="width: 100px; height: 70px;">
					</a>${dto.name}<br>${dto.description} --%>






					<img src="/project/asset/img/hotel/${dto.picture}"
						style="width: 150px; height: 100px; margin-right: 10px;"> <span
						style="font-size: x-large"><b>${dto.name}</b></span><br>
					<br>
					<span style="font-size: medium">${dto.description}</span><br>
					<br>
					<br>
					<table
						style="border: 1px solid black; width: 80%; height: 200px;; margin: auto; text-align: center;">
						<tr style="font-size: x-large; font-weight: bold">
							<td>객실유형</td>
							<td>객실요금</td>
							<td>인원</td>
						</tr>
						<tr style="font-size: medium">
							<td>${list2[status.index].name}</td>
							<td>${list1[status.index].price}</td>
							<td>${list1[status.index].personCount}</td>
						</tr>
						<tr style="font-size: medium">
							<td>${list2[status.index+1].name}</td>
							<td>${list1[status.index+1].price}</td>
							<td>${list1[status.index+1].personCount}</td>
						</tr>
						<tr style="font-size: medium">
							<td>${list2[status.index+2].name}</td>
							<td>${list1[status.index+2].price}</td>
							<td>${list1[status.index+2].personCount}</td>
						</tr>
						<tr style="font-size: medium">
							<td>${list2[status.index].name}</td>
							<td>${list1[status.index+3].price}</td>
							<td>${list1[status.index+3].personCount}</td>
						</tr>
						<tr style="font-size: medium">
							<td>${list2[status.index+1].name}</td>
							<td>${list1[status.index+4].price}</td>
							<td>${list1[status.index+4].personCount}</td>
						</tr>
					</table>
					<button type="button">닫기</button>
				</div>
			</div>
			</c:forEach>



			<!-- <div ondragover="return false;" ondragenter="return false;" class="fl" ondrop="drop(this, event);" style="width:320px; height:320px; text-align:center; border:1px solid #000; padding:5px; margin:20px;">
    <h2>한국음식</h2>
</div> -->




		</div>


		<div class="right">
			여행날짜 :
			<form>
				<select>
					<option selected>일자를 선택해주세요</option>
					<option>19/08/22(목)</option>
					<option>19/08/23(금)</option>
					<option>19/08/24(토)</option>
					<option>19/08/25(일)</option>
				</select>
			</form>
		</div>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> 전체선택<input
			type="checkbox" id="checkAll" onclick="cAll();" value="전체 선택"
			style="margin-left: 10px;"> 								
			<input type="button" value="return" style="margin-left: 10px;" onclick="location.href='/project/member/kcm/puttourspottobasket.do';">	
			<input type="button" value="next" style="margin-left: 10px;" onclick="location.href='/project/member/ybh/ybhGuide.do';">
			
			
			
	</div>


	<br>
	<br>
	<br>



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
	<footer class="footer" style="margin-top: 50px;">
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
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
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

	<script>
		var bt = 0;
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
		});
		
	</script>
</body>

</html>