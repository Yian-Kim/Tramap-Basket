<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Home</title>
	
	<!-- css삽입 -->
<%@ include file="/inc/css.jsp" %>
<style>
	#basketbtn{
		position:fixed; display:inline-block; right:1%; /* 창에서 오른쪽 길이 */ top:15%; /* 창에서 위에서 부터의 높이 */ background-color: transparent; margin:0; 
		display: inline-block;
		
	}
	#basketbtn i{
		font-size: 30px;
	}
	
	#basket { 
		position:fixed; width:15%; display:inline-block; right:1%; /* 창에서 오른쪽 길이 */ top:20%; /* 창에서 위에서 부터의 높이 */ background-color: transparent; margin:0; 
		border: 1px solid black;
		border-radius: 5px;	
		height: 600px;
		overflow-y: scroll;
	}
	
	/* #themechoice {
		border: 1px solid red;
		margin: 0px auto;
		width: 190px;		
	}
	
	#themename {
		margin: 20px auto;
		width: 800px; 
		height: 350px;
		border: 1px solid black;
		font-size : 20px;
	}
	
	#spotchoice {
		margin: 0px auto;
		border: 1px solid blue; */
	}
	
	#find {
		width: 900px;
		heigth: 900px;	
		margin-left: 300px;	
	}
	
	#find tr td {
		border: 3px solid #ccc;
		collapse: collapse;
		width: 300px;
		height: 300px;
		text-align: center;	
	}
	
	.profile > img{
		height: 60%;
		width: 80%;
		margin-top: 5px;
	}
	.profile {
		border: 0px solid red;
		height: 70%;
		/* width: 90%; */
	}
	
	.content {
		height: 20%;
		font-size : 18px;
	}
	
	.h3 {
		font-size : 18px;
		color : gray;
	}
	
	.button {
		border: 1px solid black;
		background-color : white;
		color: black;
		box-shadow: white;
		
	}
	
	.button:hover {
		cursor: pointer;
		border: 0px solid black;
		color: rgba(255, 255, 255, 0.85);
		box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
	}
	
	#themechoice {
		margin-left : 300px;
	}
	
	
	
	    
	
</style>
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
    
 	<div id="basketbtn"><i class="ti-arrow-circle-right"/></i></div>
    <div id="basket"></div>

   
    <!-- ================ 내용  ================= -->  
    
    
    
 	<h1><small>나에게 맞는</small> 테마 <small>찾기</small></h1>
   
	<form method="POST" action="/project/member/cdb/touristspotchoiceok.do">
   	<div id="themechoice">
   	
   <%-- 	<c:forEach items="${tlist}" var="dto">
   	
   		<input type="checkbox" name="checkbox" id="checkbox" value="${dto.theme_seq}"><span id="themename">${dto.name}</span>
   	
   	</c:forEach> 
 --%>   	
 	
 	
 	
 <!-- 	<table>
 		<tr>
 			<th>
	 			<input type="checkbox" name="checkbox" id="checkbox" value="야경"><span id="themename">야경</span>
 			</th>
	 		<td>
 				<a href="/project/asset/img/파타야_호라이즌.jpeg"></a>
	 		</td>
 		</tr>
 	</table> -->
 	
 	<table id="find">
				<tr>
					<td>
						<div class="profile"><img src="/project/asset/img/파타야_호라이즌.jpeg"></div>
						<input type="checkbox" name="checkbox" id="checkbox" value="야경"><h3>야경</h3>
					</td>
					<td>
						<div class="profile"><img src="/project/asset/img/방콕_나이쏘이.jpg"></div>
						<input type="checkbox" name="checkbox" id="checkbox" value="맛집"><h3>맛집</h3>
					</td>
					<td>
						<div class="profile"><img src="/project/asset/img/파타야_산호섬투어.jpg"></div>
						<input type="checkbox" name="checkbox" id="checkbox" value="바다"><h3>바다</h3>
					</td>
				</tr>
				
				<tr>
					<td>
						<div class="profile"><img src="/project/asset/img/방콕_터미널21.jpg"></div>
						<input type="checkbox" name="checkbox" id="checkbox" value="쇼핑"><h3>쇼핑</h3>
					</td>
					<td>
						<div class="profile"><img src="/project/asset/img/방콕_왕궁.jpg"></div>
						<input type="checkbox" name="checkbox" id="checkbox" value="역사"><h3>역사</h3>
					</td>
					<td>
						<div class="profile"><img src="/project/asset/img/방콕_칼립소쇼.jpg"></div>
						<input type="checkbox" name="checkbox" id="checkbox" value="예술"><h3>예술</h3>
					</td>
				</tr>
				
				<tr>
					<td>
						<div class="profile"><img src="/project/asset/img/골프.png"></div>
						<input type="checkbox" name="checkbox" id="checkbox" value="골프"><h3>골프</h3>
					</td>
					<td>
						<div class="profile"><img src="/project/asset/img/허니문.jpg"></div>
						<input type="checkbox" name="checkbox" id="checkbox" value="허니문"><h3>허니문</h3>
					</td>
					<td>
						<div class="profile"><img src="/project/asset/img/파타야_워킹스트리트.jpg"></div>
						<input type="checkbox" name="checkbox" id="checkbox" value="시내여행"><h3>시내여행</h3>
					</td>
				</tr>
			</table>
     		
   	</div>
   			<input type="submit" value="관광지 보기" class="button" id="next" style="margin-left: 1030px; margin-top: 20px; margin-bottom: 20px;">
   	</form>
   	<%-- <div class="btns short">
				<input type="button" value="관광지 보기" class="btn btn-default"
					onclick="location.href=';">
	</div> --%>
 
    
    <!-- ================ 내용  end ================= --> 

    
   

  </main>


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
Copyright &copy;<script>docu`ment.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp" %>
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