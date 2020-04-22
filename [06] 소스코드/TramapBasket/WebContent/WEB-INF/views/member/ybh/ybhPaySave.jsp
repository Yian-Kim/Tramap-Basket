<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>TramapBasket - PaySave</title>
	
	<!-- css삽입 -->
<%@ include file="/inc/css.jsp" %>
<style>

    #selArea{
    	border: 1px solid black;
    	margin-top: 20px;
    	margin-bottom: 20px;
    }
    #selArea h4 {
		outline: 1px solid black;
		text-align: center;
		padding: 20px;
	}    

	.halfD{
		width: 40%;
		display: inline-block;	
	}
	.halfD2{
		width: 80.3%;
		display: inline-block;	
	}
	.center{
		text-align: center;
		
	}
	.tbl{
		border: 1px solid black;
		width: 100%;
	}
	.tbl td{
		border: 1px solid black;
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
		<div id="selArea">
			<h4>최종 내역</h4>
			
		
			<div class="center">
				<div class="halfD">
					<p>${country.name }</p>
				</div>
				<div class="halfD">
					<table class="tbl">
		   				<tr>
		   					<td>출발일 ~ 도착일 (인원수)</td>
		   					<td>${start.startday } ~ ${start.arriveday } (${start.people }명)</td>
		   				</tr>
		   			</table>
				</div>
			</div>
			
   			<div class="center">
   			
	   			<div class="halfD">
					<table class="tbl">
						<tr>
							<td>출발</td>
							<td>→</td>
							<td>도착</td>
						</tr>
						<tr>
							<td>${sTicket.startAirportName }</td>
							<td>${sTicket.waypointAirportName }</td>
							<td>${sTicket.arriveAirportName }</td>
						</tr>
						<tr>
							<td>${sTicket.flightClassName }</td>
							<td colspan="2">${sTicket.airlineName }</td>
						</tr>
						
						<tr>
							<td colspan="3">${sTicket.priceComma }원</td>
						</tr>
						
					</table>
	   			</div>
	   			<div class="halfD">
					<table class="tbl">
						
						<tr>
							<td>출발</td>
							<td>→</td>
							<td>도착</td>
						</tr>
						<tr>
							<td>${aTicket.startAirportName }</td>
							<td>${aTicket.waypointAirportName }</td>
							<td>${aTicket.arriveAirportName }</td>
						</tr>
						<tr>
							<td>${aTicket.flightClassName }</td>
							<td colspan="2">${aTicket.airlineName }</td>
						</tr>
						<tr>
							<td colspan="3">${aTicket.priceComma }원</td>
						</tr>
					</table>
	   			</div>
				
   			</div><!-- 티켓까지 -->
   			<!-- TODOTDOTDOTDO ** 이곳부터고 YbhPaySave DAO 물어보기 -->
   			<div class="center">
	   			<div class="halfD2">
				    <table class="tbl">
		   				<c:forEach items="${tList }" var="tdtoList" varStatus="status">
		    				<tr>
		    					<td rowspan="${tdtoList.size()+2}" style="max-width: 50px;">${status.index+1 }일차</td>
		    					<td >${tdtoList.get(0).name }</td>
		    					<td>-</td>
		    				</tr>
		   					<c:forEach items="${tdtoList }" var="tdto" varStatus="statusIn">
		   						<c:if test="${statusIn.index >0}">
		   						<tr>
		   							<td >${tdto.name }</td>
		   							<td>-</td>
		   						</tr>
		   						</c:if>
		   					</c:forEach>
		    				<tr>
		    					
		    					<c:if test="${empty rList.get(status.index).hotelName}">
		    						<td ><i class="fas fa-home"></i> 숙소없음</td>
		    						<td>-</td>
		    					</c:if>  
		    					<c:if test="${!empty rList.get(status.index).hotelName}">
		    						<td><i class="fas fa-home"></i> ${rList.get(status.index).hotelName} (${rList.get(status.index).personCount}/${rList.get(status.index).roomClassName})</td>
		    						<td>${rList.get(status.index).priceComma}원</td>
		    					</c:if>  
		    					
		    				</tr>
		    				<tr>
		    					
		    					<c:if test="${empty gList.get(status.index).name}">
		    						<td><i class="fas fa-walking"></i> 가이드없음</td>
		    						<td>-</td>
		    					</c:if>  
		    					<c:if test="${!empty gList.get(status.index).name}">
		    						<td><i class="fas fa-walking"></i> ${gList.get(status.index).name} <c:if test="${gList.get(status.index).gender ==1}"><i class='fas fa-mars'></i></c:if><c:if test="${gList.get(status.index).gender ==2}"><i class='fas fa-venus'></i></c:if></td>
		    						<td>${gList.get(status.index).priceComma}원</td>
		    					</c:if>

		    					
		    				</tr>
		   				</c:forEach>
						
		   			</table>
	   			</div>
   			</div>
   			
   			<div class="center">
	   			<h4 class="halfD2">
	   				합계: ${sumPrice}원
	   			</h4>
   			</div>
   			
   			<div class="center">
   				<div class="halfD2">
   					<button id="btn1" class="button button-subscribe mr-auto mb-1" type="button">바로결제</button>
   						
   						
   					<button id="btn2" class="button button-subscribe mr-auto mb-1" type="button">장바구니</button>
   					<button id="btn3" class="button button-subscribe mr-auto mb-1" type="button">취소하기</button>
   				</div>
   			</div>
   			<div style="text-align: right; padding: 10px;">
   				<button id="btnBack" style="padding: 5px 10px;" class="button button-subscribe mr-auto mb-1" type="button"
   					onclick="history.back();"><i class="fas fa-undo-alt"></i></button>
   			</div>
			
		</div> <!-- area -->
      </div><!-- container -->
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
		$("#btn1").click(function(){
			<c:if test="${empty  loginCheck}">
				window.open('/project/member/ybh/ybhLogin.do?how=1','loginWindow','width=430,height=500,location=no,status=no,scrollbars=yes,left=700, top=50');
				
			</c:if>
			<c:if test="${!empty loginCheck}">
				location.href='/project/member/ybh/ybhPayment.do';
			</c:if>
							
			
			
		});
	
	</script>
</body>

</html>