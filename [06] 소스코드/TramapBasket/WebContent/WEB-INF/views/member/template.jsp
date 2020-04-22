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
            
            
              <li class="nav-item"><a class="button button-header" href="/project/member/ybh/ybhLogin.do"
              	onclick="window.open(this.href, '_blank', 'width=400,height=300,toolbars=no,scrollbars=no,left=700, top=50'); return false;">Login</a></li>
              	
            
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
					<div>나라사진</div>
					<p>태국</p>
				</div>
				<div class="halfD">
					<table class="tbl">
		   				<tr>
		   					<td>출발일 ~ 도착일 (인원수)</td>
		   					<td>2019-08-22 ~ 2019-08-25 (1명)</td>
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
							<td>인천</td>
							<td> X </td>
							<td>방콕</td>
						</tr>
						<tr>
							<td>이코노미</td>
							<td colspan="2">티웨이</td>
						</tr>
						
						<tr>
							<td colspan="3">138,000원</td>
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
							<td>방콕</td>
							<td> X </td>
							<td>인천</td>
						</tr>
						<tr>
							<td>비즈니스</td>
							<td colspan="2">티웨이</td>
						</tr>
						<tr>
							<td colspan="3">137,000원</td>
						</tr>
					</table>
	   			</div>
				
   			</div><!-- 티켓까지 -->
   			<!-- TODOTDOTDOTDO ** 이곳부터고 YbhPaySave DAO 물어보기 -->
   			<div class="center">
	   			<div class="halfD2">
				    <table class="tbl">
		   				
		    				<tr>
		    					<td rowspan="4" style="max-width: 50px;">1일차</td>
		    					<td >카오산로드</td>
		    					<td>-</td>
		    				</tr>
		   					
		   						
		   					
		   						
		   						<tr>
		   							<td >이글네스트</td>
		   							<td>-</td>
		   						</tr>
		   						
		   					
		    				<tr>
		    					
		    					  
		    					
		    						<td><i class="fas fa-home"></i> 카사 니트라 (1인실/디럭스 룸)</td>
		    						<td>80,000원</td>
		    					  
		    					
		    				</tr>
		    				<tr>
		    					
		    					  
		    					
		    						<td><i class="fas fa-walking"></i> 뽀이 뜨리차다 <i class='fas fa-venus'></i></td>
		    						<td>78,000원</td>
		    					

		    					
		    				</tr>
		   				
		    				<tr>
		    					<td rowspan="5" style="max-width: 50px;">2일차</td>
		    					<td >워킹스트리트</td>
		    					<td>-</td>
		    				</tr>
		   					
		   						
		   					
		   						
		   						<tr>
		   							<td >산호섬투어</td>
		   							<td>-</td>
		   						</tr>
		   						
		   					
		   						
		   						<tr>
		   							<td >호라이즌</td>
		   							<td>-</td>
		   						</tr>
		   						
		   					
		    				<tr>
		    					
		    					  
		    					
		    						<td><i class="fas fa-home"></i> 노바 플래티넘 호텔 파타야 (1~2인실/디럭스 룸)</td>
		    						<td>70,000원</td>
		    					  
		    					
		    				</tr>
		    				<tr>
		    					
		    					
		    						<td><i class="fas fa-walking"></i> 가이드없음</td>
		    						<td>-</td>
		    					  
		    					

		    					
		    				</tr>
		   				
		    				<tr>
		    					<td rowspan="5" style="max-width: 50px;">3일차</td>
		    					<td >람파라핀</td>
		    					<td>-</td>
		    				</tr>
		   					
		   						
		   					
		   						
		   						<tr>
		   							<td >피파</td>
		   							<td>-</td>
		   						</tr>
		   						
		   					
		   						
		   						<tr>
		   							<td >버티고 앤 문 바</td>
		   							<td>-</td>
		   						</tr>
		   						
		   					
		    				<tr>
		    					
		    					  
		    					
		    						<td><i class="fas fa-home"></i> 르네상스파타야리조트 (1~2인실/디럭스 룸)</td>
		    						<td>75,000원</td>
		    					  
		    					
		    				</tr>
		    				<tr>
		    					
		    					  
		    					
		    						<td><i class="fas fa-walking"></i> 이지은 <i class='fas fa-venus'></i></td>
		    						<td>137,000원</td>
		    					

		    					
		    				</tr>
		   				
		    				<tr>
		    					<td rowspan="3" style="max-width: 50px;">4일차</td>
		    					<td >욧시암보트</td>
		    					<td>-</td>
		    				</tr>
		   					
		   						
		   					
		    				<tr>
		    					
		    					
		    						<td ><i class="fas fa-home"></i> 숙소없음</td>
		    						<td>-</td>
		    					  
		    					  
		    					
		    				</tr>
		    				<tr>
		    					
		    					
		    						<td><i class="fas fa-walking"></i> 가이드없음</td>
		    						<td>-</td>
		    					  
		    					

		    					
		    				</tr>
		   				
						
		   			</table>
	   			</div>
   			</div>
   			
   			<div class="center">
	   			<h4 class="halfD2">
	   				합계: 715,000원
	   			</h4>
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
	
	
	</script>
</body>

</html>