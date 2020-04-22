<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>TraMap Basket</title>
	
	<!-- css삽입 -->
<%@ include file="/inc/css.jsp" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<style>
	#basketbtn i{
		font-size: 30px;
	}
	
	#basket { 
		position:fixed; width:15%; display:inline-block; right:1%; /* 창에서 오른쪽 길이 */ top:20%; /* 창에서 위에서 부터의 높이 */ background-color: transparent; margin:0; 
		border: 1px solid black;
		border-radius: 5px;	
		height: 600px;
		/* overflow-y: scroll; */
	}
    
    .picture {
		float: left;
		width: 80px;
		height: 80px;
		border: 1px solid #ddd;
		margin: 10px;
		margin-top: 10px;
		margin-left: 10px;
		/* background-image: url(/project/asset/img/${pic}); */
		background-image: url(/project/asset/img/copizulzul.jpg);
		background-repeat: no-repeat;
		background-size: contain;
		background-position : center center;
	}
	
	.adminmenu{
		text-align:center;
		font-size: 25px;
		border-top:1px solid #ccc;
		margin: 20px;
		padding: 30px;
	}
	
	#profilename , #profilelevel{
		text-align:center;
	}
	
    
    .container{
    	width:900px;
    	
    }

	#tblEdit{ width: 700px;}
	#tblEdit th{
			width:120px;
			text-align: center;		
	}
	#tblEdit td{width: 600px;}
    
	#country1 {display: inline-block; height:20px;}
	#continent1 {display: inline-block;}
	
	#tblEdit{ margin-left:80px;}
	
	.select > continent1{display:inline-block;}
	
	.btns{float:right;}
	
	.selectbox {
		display: inline-block;
	}
	.headname{
		margin : 10px;
	}
</style>
<script type="text/javascript">
	$('document').ready(function() {


});
	
</script>
</head>
<body>
  <!--================ Start Header Menu Area =================-->
	<header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand logo_h" href="index.html"><img src="/project/asset/img/logo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Shop</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
                  <li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
                  <li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
                  <li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
                </ul>
			 </li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Blog</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
                </ul>
							</li>
							<li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Pages</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
                  <li class="nav-item"><a class="nav-link" href="register.html">Register</a></li>
                  <li class="nav-item"><a class="nav-link" href="tracking-order.html">Tracking</a></li>
                </ul>
              </li>
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



  <main class="site-main">
    
 	
    <div id="basket"></div>

    <!-- ================ Blog section start ================= -->  
     <section class="section-margin calc-60px">
      <div class="container" style="border: 1px solid black;">
        <div class="section-intro pb-60px">
         
          <h2 class="headname">호텔<span class="section-intro__style">수정</span></h2>
        </div>
    		
    		<form method="POST" action="/project/admin/hotel/editok.do" enctype="multipart/form-data">
    			<table id="tblEdit" class="table table-bordered">
    				
    				<tr>
    					<th>호텔명</th>
    					<td><input type="text" name="name" id="name" class="form-control" required value="${hodto.name}">${hodto.name}</td>
    				</tr>
    				<tr>
    					<th>사진</th>
    					<td>
	    					<input type="file" name="attach" id="attach" class="form-control">
							
							<c:if test="${not empty hodto.picture}">
								<div style="margin-top:10px;">
									${hodto.picture} 
									<span onclick="deletefile();" style="cursor:pointer;">[delete]</span>
								</div>
							</c:if>
						
							<c:if test="${empty hodto.picture}">
								<div style="margin-top:10px;">사진없음</div>
							</c:if>
						</td>
    				</tr>
    				<tr>
    					<th>설명</th>
    					<td><textarea name="description" id="description" class="form-control" required >${hodto.description}</textarea></td>
    				</tr>
    				<tr>
    					<th>경도</th>
    					<td><input type="text" name="lat" id="lat" class="form-control" required value="${hodto.lat}">${hodto.lat}</td>
    				</tr>
    				<tr>
    					<th>위도</th>
    					<td><input type="text" name="lng" id="lng" class="form-control" required value="${hodto.lng}">${hodto.lng}</td>
    				</tr>
    				<tr>
    					<th>근처 관광지</th>
    					<td>
    						<select name="tourspot" id="tourspot">
    							<option value="1">카오산</option>
    							<option value="2">이글네스트</option>
    							<option value="3">워킹스트리트</option>
    							<option value="4">산호섬투어</option>
    							<option value="5">호라이즌</option>
    							<option value="6">람파라핀</option>
    							<option value="7">피파</option>
    							<option value="8">버티고 앤 문바</option>
    							<option value="9">욧시암보트</option>
    						</select>
						</td>
    				</tr>
    			</table>
    			<div class="btns">
				<input type="button" value="돌아가기" class="control"
					onclick="location.href='/project/admin/hotel/view.do?hotel_seq=${hodto.hotel_seq}';">
				<input type="submit" value="수정하기" class="btn btn-default">
				</div>
				
				<input type="hidden" name="seq" value="${hodto.hotel_seq}">
				<input type="hidden" name="isdelete">
				 <input type="hidden" name="picture" value="${hodto.picture}">
    		</form>
    	</div>
    	</section>
    
    <!-- ================ Blog section end ================= -->  

    <!-- ================ Subscribe section start ================= --> 
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
    </section> -->
    <!-- ================ Subscribe section end ================= --> 

      <main class="site-main">
    
 	<!-- 페이지 우측 메뉴 바 -->
    <div id="basket">
    	<!-- 우측 메뉴바 프로필부분 -->
    	<div class="profile" >
    		<div id="pic"></div>
    		<input type="button" value="정보관리" class="btn btn-default" onclick="">
    		<div id="profilename"><label>관일장(guan)</label></div>
    		<div id="profilelevel"><label>관리자</label></div>
    	</div>
    	<!-- 우측 메뉴바 메뉴부분 -->
    	<div class="adminmenu" >
    		<div><a href="">항공 관리</a></div>
    		<div><a href="">나라 관리</a></div>
    		<div><a href="">관광지 관리</a></div>
    		<div><a href="">숙박 관리</a></div>
    		<div><a href="">테마 관리</a></div>
    		<div><a href="">회원 관리</a></div>
    	</div>
    </div>
	

  <!--================ Start footer Area  =================-->	
	<footer class="footer">
		<div class="footer-area">
			<div class="container">
				<div class="row section_gap">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title large_title">Our Mission</h4>
							<p>
								So seed seed green that winged cattle in. Gathering thing made fly you're no 
								divided deep moved us lan Gathering thing us land years living.
							</p>
							<p>
								So seed seed green that winged cattle in. Gathering thing made fly you're no divided deep moved 
							</p>
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
									<span class="fa fa-location-arrow"></span>
									Head Office
								</p>
								<p>123, Main Street, Your City</p>
	
								<p class="sm-head">
									<span class="fa fa-phone"></span>
									Phone Number
								</p>
								<p>
									+123 456 7890 <br>
									+123 456 7890
								</p>
	
								<p class="sm-head">
									<span class="fa fa-envelope"></span>
									Email
								</p>
								<p>
									free@infoexample.com <br>
									www.infoexample.com
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp" %>
	<!-- 이곳 -->
	
	
</body>

</html>