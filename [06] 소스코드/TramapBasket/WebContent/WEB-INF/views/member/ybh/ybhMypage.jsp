
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>TramapBasket - MyPage</title>
	
	<!-- css삽입 -->
<%@ include file="/inc/css.jsp" %>
<style>
	
	#tblList th:nth-child(1) { width: 50px;}
	#tblList th:nth-child(2) { width: 140px;}
	#tblList th:nth-child(3) { width: 320px;}
	#tblList th:nth-child(4) { width: 140px;}
	#tblList th:nth-child(5) { width: 150px;}
	
	
	#tblList td{text-align: center;}
	#tblList td:nth-child(2) { text-align: left; padding-left: 15px;}
	
	.orderArea{
		margin-top: 50px;
	}
	
    .orderArea h4 {
		outline: 1px solid black;
		text-align: center;
		padding: 20px;
	}    
	td a:hover{
		color: tomato;
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
    


    
    <!-- ================ Blog section start ================= -->  
    <section class="blog" style="padding-bottom: 50px;">
      <div class="container" style="border: 1px solid black;">
			<!-- 작업공간 -->
			
		<div class="orderArea">
			<h4>${loginCheck.name}님의 결제 내역</h4>
			
			<table id="tblList" class="table table-bordered table-striped long">
				<tr>
					<th>번호</th>
					<th>나라</th>
					<th>기간</th>
					<th>결제일</th>
					<th>결제금액</th>
				</tr>
				<c:if test="${bppList.size()==0 }">
					<tr>
						<td colspan="5">등록된 게시물이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach items="${bppList }" var="dto" varStatus="status">	
					<tr>
						<td>
							${status.index+1 }
						</td>		
						<td>
							${dto.countryName }		
						</td>			
						<td><a href="/project/member/ybh/ybhMypageView.do">${dto.startdate.substring(0, 10) } ~ ${dto.arrivedate.substring(0, 10) }</a></td>
						<td>${dto.paymentdate}</td>			
						<td>${dto.priceComma }원</td>			
					</tr>
				</c:forEach>
			</table>
			
			
		</div><!-- area -->
      </div>
    </section>
    <!-- ================ Blog section end ================= -->  


  </main>


  <!--================ Start footer Area  =================-->	
	<footer class="footer">
		<div class="footer-area">
			<div class="container">
			
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
			
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp" %>
	<!-- 이곳 -->
	
	<script>
	
		$(document).keydown(function(event){
			
			if(event.keyCode == 116){
				location.href='/project/member/ybh/ybhMypage.do';
				
			}
		});
		
	
	</script>
</body>

</html>