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
	
	
	.message.short {
		margin-top: 150px;
	}
	
</style>
<script>

	$(function() {
		
	});

</script>
</head>
<body>
	<!-- views > board > del.jsp -->
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
	

  <main class="site-main">
    
 	
    <div id="basket"></div>
	
	<div id="main">
		
		<div class="alertbox" id="alertbox">
		<section id="detail">
			
			<div class="message short well">
				삭제하면 복구가 불가능합니다.
				<br>
				정말 삭제하겠습니까?
			</div>
			
			<div class="btns short">
				<input type="button" value="삭제하기" class="btn btn-default"
					onclick="location.href='/myhome/board/delok.do?seq=${seq}';">
				<input type="button" value="돌아가기" class="btn btn-default"
					onclick="location.href='/myhome/board/view.do?seq=${seq}';">
			</div>
			
		</section>
		</div>
	</div>
	
</body>
</html>











