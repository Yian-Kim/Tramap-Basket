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
		/* overflow-y: scroll; */
	}
    
    
    /* =========================  */
    
        #pic {
      float: left;
      width: 80px;
      height: 80px;
      border: 1px solid #ddd;
      margin: 10px;
      margin-top: 4px;
      /* background-image: url(/myhome/pic/${pic}); */
      background-image: url(/project/asset/img/r2.jpg); /* 원래 폴더명은 project 이지만 경로상 project로해줘야함 */
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
    
    
    
    
    

</style>
</head>
<body>
  <!--================ Start Header Menu Area =================-->
  <!-- 상단바 -->
  
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
              <li class="nav-item active"><a class="nav-link" href="index.html">가이드</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">숙소</a>
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
                  aria-expanded="false">도움말</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
                </ul>
			  </li>
			  <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">커뮤니티</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
                  <li class="nav-item"><a class="nav-link" href="register.html">Register</a></li>
                  <li class="nav-item"><a class="nav-link" href="tracking-order.html">Tracking</a></li>
                </ul>
              </li>
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
	<!--================ End Header Menu Area =================-->



  <main class="site-main">
    
 	<!-- <div id="basketbtn"><i class="ti-arrow-circle-right"/></i></div> -->
   <!--  <div id="basket">
    	<div><img src="../WebContent/asset/img/r2.jpg"></div>
    	<button type="button" class="btn btn-default" style="width:100px; margin:150px 75px 10px 75px; background-color:gray;">회원 관리</button>
    	<button type="button" class="btn btn-default" style="width:100px; margin:0px 75px 10px 75px; background-color:gray;">항공 관리</button>
    	<button type="button" class="btn btn-default" style="width:100px; margin:0px 75px 10px 75px; background-color:gray;">숙박 관리</button>
    	 -->
    <!-- ==================================================================== -->
    
        <!-- 페이지 우측 메뉴 바 -->
    <div id="basket">
       <!-- 우측 메뉴바 프로필부분 -->
       <div class="profile">
       		
           <div id="pic"></div>
          <input type="button" value="정보관리" class="btn btn-default" onclick="">
          <div><label>admin(administrator)</label></div>
          <div><label>관리자</label></div>
       </div>
       우측 메뉴바 메뉴부분
       <div class="adminmenu" >
          <div><a href="airline.html">항공 관리</a></div>
          <div><a href="">나라 관리</a></div>
          <div><a href="">관광지 관리</a></div>
          <div><a href="">숙박 관리</a></div>
          <div><a href="">테마 관리</a></div>
          <div><a href="">회원 관리</a></div>
       </div>
    </div> 
    
    
    	 
    	
    	<%-- <div><center><input type="button" value="회원 관리" style="width:100px; margin-top:200px;"></center></div>
    	<div><center><input type="button" value="항공 관리" style="width:100px; margin-top:20px;"></center></div>
    	<div><center><input type="button" value="숙박 관리" style="width:100px; margin-top:20px;"></center></div>
    	<div><center><input type="button" value="가이드 관리" style="width:100px; margin-top:20px;"></center></div>
    	<div><center><input type="button" value="관광지 관리" style="width:100px; margin-top:20px;"></center></div>  --%>
    </div>

    
    <!--================ Hero banner start =================-->
<!--     <section class="hero-banner">
      <div class="container">
        <div class="row no-gutters align-items-center pt-60px">
          <div class="col-5 d-none d-sm-block">
            <div class="hero-banner__img">
              <img class="img-fluid" src="/project/asset/img/home/hero-banner.png" alt="">
            </div>
          </div>
          <div class="col-sm-7 col-lg-6 offset-lg-1 pl-4 pl-md-5 pl-lg-0">
            <div class="hero-banner__content">
              <h4>Shop is fun</h4>
              <h1>Browse Our Premium Product</h1>
              <p>Us which over of signs divide dominion deep fill bring they're meat beho upon own earth without morning over third. Their male dry. They are great appear whose land fly grass.</p>
              <a class="button button-hero" href="#">Browse Now</a>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <!--================ Hero banner start =================-->

    <!--================ Hero Carousel start =================-->
    
    <!--================ Hero Carousel end =================-->

    <!-- ================ trending product section start ================= -->  
    <section class="section-margin calc-60px">
      <div class="container" style="border: 1px solid black;">
        <div class="section-intro pb-60px">
          <p>Popular Item in the market</p>
          <h2>Trending <span class="section-intro__style">Product</span></h2>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="/project/asset/img/product/product1.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Accessories</p>
                <h4 class="card-product__title"><a href="single-product.html">Quartz Belt Watch</a></h4>
                <p class="card-product__price">$150.00</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="/project/asset/img/product/product2.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Beauty</p>
                <h4 class="card-product__title"><a href="single-product.html">Women Freshwash</a></h4>
                <p class="card-product__price">$150.00</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="/project/asset/img/product/product3.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Decor</p>
                <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
                <p class="card-product__price">$150.00</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="/project/asset/img/product/product4.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Decor</p>
                <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
                <p class="card-product__price">$150.00</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="/project/asset/img/product/product5.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Accessories</p>
                <h4 class="card-product__title"><a href="single-product.html">Man Office Bag</a></h4>
                <p class="card-product__price">$150.00</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="/project/asset/img/product/product6.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Kids Toy</p>
                <h4 class="card-product__title"><a href="single-product.html">Charging Car</a></h4>
                <p class="card-product__price">$150.00</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="/project/asset/img/product/product7.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Accessories</p>
                <h4 class="card-product__title"><a href="single-product.html">Blutooth Speaker</a></h4>
                <p class="card-product__price">$150.00</p>
              </div> 
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="/project/asset/img/product/product8.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Kids Toy</p>
                <h4 class="card-product__title"><a href="#">Charging Car</a></h4>
                <p class="card-product__price">$150.00</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ trending product section end ================= -->  

	
    <!-- ================ offer section start ================= --> 
    <!-- <section class="offer" id="parallax-1" data-anchor-target="#parallax-1" data-300-top="background-position: 20px 30px" data-top-bottom="background-position: 0 20px">
      <div class="container">
        <div class="row">
          <div class="col-xl-5">
            <div class="offer__content text-center">
              <h3>Up To 50% Off</h3>
              <h4>Winter Sale</h4>
              <p>Him she'd let them sixth saw light</p>
              <a class="button button--active mt-3 mt-xl-4" href="#">Shop Now</a>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <!-- ================ offer section end ================= --> 

    <!-- ================ Best Selling item  carousel ================= --> 
   <!--  <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>Popular Item in the market</p>
          <h2>Best <span class="section-intro__style">Sellers</span></h2>
        </div>
        <div class="owl-carousel owl-theme" id="bestSellerCarousel">
          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="/project/asset/img/product/product1.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Accessories</p>
              <h4 class="card-product__title"><a href="single-product.html">Quartz Belt Watch</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="/project/asset/img/product/product2.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Beauty</p>
              <h4 class="card-product__title"><a href="single-product.html">Women Freshwash</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="/project/asset/img/product/product3.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="/project/asset/img/product/product4.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="/project/asset/img/product/product1.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Accessories</p>
              <h4 class="card-product__title"><a href="single-product.html">Quartz Belt Watch</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="/project/asset/img/product/product2.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Beauty</p>
              <h4 class="card-product__title"><a href="single-product.html">Women Freshwash</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="/project/asset/img/product/product3.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="/project/asset/img/product/product4.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <!-- ================ Best Selling item  carousel end ================= --> 

    <!-- ================ Blog section start ================= -->  
    <section class="blog">
      <div class="container" style="border: 1px solid black;">
      	<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea laborum consectetur autem expedita magnam veniam fugiat dolor voluptatem labore ratione modi consequuntur amet dolore nostrum natus sapiente praesentium vitae doloremque.</span>
      	<span>Odio aspernatur fuga saepe molestiae rem deleniti explicabo. Vitae ducimus tempora delectus eius officiis pariatur consectetur soluta officia earum explicabo consequuntur sunt dicta praesentium libero iusto laborum necessitatibus minus aut?</span>
      	<span>Soluta qui dolor sint dignissimos unde nihil aspernatur. Quos maiores quasi odit error enim iusto facilis harum itaque facere et similique commodi illum blanditiis praesentium minima laudantium earum vero modi.</span>
      	<span>Magnam possimus tenetur debitis error culpa est dignissimos iure nesciunt beatae ut. Quam ex sapiente quod dolorem asperiores reprehenderit libero dolores provident error. Nihil vitae nobis debitis cumque odit iusto?</span>
      	<span>Aliquid veniam unde aperiam aut necessitatibus optio totam in inventore rem velit deserunt dignissimos nesciunt minima quisquam non molestias adipisci repellendus minus atque nostrum. Ut quo perferendis quas obcaecati iusto.</span>
      	<span>Voluptate animi nobis expedita quisquam libero aspernatur quos sint laboriosam dolor blanditiis nulla ipsa totam quam rem repellat sed delectus sequi alias commodi itaque laborum eius exercitationem doloribus impedit dicta.</span>
      	<span>Placeat eius reiciendis accusamus eum dolorem sunt ut velit aut veniam unde aperiam adipisci explicabo at veritatis enim fugiat quis fuga repellendus maxime pariatur reprehenderit tenetur maiores tempore expedita similique!</span>
      	<span>At esse suscipit laborum est inventore odit cum dolor obcaecati ex rerum repellendus reprehenderit ea earum veritatis accusamus error velit praesentium cumque vel quasi culpa voluptates aliquam assumenda commodi harum.</span>
      	<span>Aliquam atque esse veritatis ducimus dolor illum cum vero eos debitis voluptatum numquam cupiditate aut nesciunt doloremque ex minus molestiae adipisci magni sed rerum accusamus quae neque ipsam perferendis dolorum.</span>
      	<span>Excepturi hic amet nesciunt minima non commodi nobis quisquam aliquam molestias distinctio voluptas obcaecati repellat aut nulla expedita sit veniam illo iure quidem adipisci ratione doloribus asperiores vel suscipit atque!</span>
      	<span>Ratione ipsum cumque iste nulla dolorem provident illo asperiores aspernatur excepturi atque dolore impedit amet recusandae quibusdam assumenda quam repudiandae quia. Eos commodi enim vitae necessitatibus dicta incidunt ipsam nam.</span>
      	<span>Magni deserunt minus iste aliquid culpa molestiae consectetur sint ab non fugiat aperiam fugit ea excepturi sequi ad dicta eius reprehenderit necessitatibus ut quis incidunt perferendis architecto possimus corporis ipsam.</span>
      	<span>Laboriosam voluptas deserunt accusantium harum vitae mollitia sapiente itaque suscipit fugit reiciendis at ratione vero adipisci recusandae repellendus architecto veritatis molestiae eius neque consectetur minima facilis porro eligendi dolorem debitis.</span>
      	<span>Corrupti quod dolores ea provident quis fugiat praesentium natus enim sequi nesciunt amet beatae a saepe adipisci animi inventore nisi deserunt quasi asperiores earum. Repudiandae earum voluptas temporibus nihil odio?</span>
      	<span>Quisquam quia assumenda veritatis eligendi cumque ipsa doloremque et quam. Iste mollitia amet deserunt suscipit unde natus laborum totam pariatur voluptas minus id fugiat vel doloribus obcaecati sed temporibus recusandae?</span>
      	<span>Voluptates repudiandae iusto voluptas dolore quod dolor temporibus eos vero placeat itaque. Harum tempore doloremque nisi ducimus dignissimos quidem perspiciatis porro veritatis voluptate aliquam reiciendis eligendi dolore fugit soluta similique!</span>
      	<span>Quaerat amet nostrum accusamus eum aliquam deserunt praesentium ab itaque numquam magni cum doloribus. Beatae repellendus itaque voluptatem dolorem possimus sunt natus eligendi ullam commodi eius corrupti et tenetur voluptatum.</span>
      	<span>Voluptatem magnam repellat! Blanditiis dolore consectetur fugiat animi vel modi earum voluptate fugit placeat in possimus aperiam adipisci? Architecto repellat soluta nam reprehenderit deleniti aliquid id consectetur pariatur. Similique atque.</span>
      	<span>Minus velit quasi eligendi dignissimos tenetur sit quam similique voluptatum laborum repudiandae! Nisi maiores sapiente in cumque minus ad commodi ex placeat incidunt odit. Atque nobis dolor nostrum eligendi fugit.</span>
      	<span>Minima quos iure impedit animi suscipit quisquam quidem delectus vitae! Nisi hic facilis reprehenderit itaque similique sit inventore at rerum aperiam illum nemo veritatis quod ut adipisci ipsa repellat nostrum.</span>
      	<span>Laboriosam architecto voluptatum aliquid veniam dolorum nemo unde veritatis iste quas deserunt temporibus eos maiores a! Repellat laborum blanditiis officiis minus excepturi maxime placeat magnam exercitationem aspernatur iste quasi provident!</span>
      	<span>Unde dignissimos aspernatur perspiciatis dolor culpa reprehenderit quidem quos assumenda voluptas velit sunt nisi deleniti reiciendis commodi distinctio laboriosam recusandae sint impedit asperiores esse ad eaque fuga explicabo molestias nemo.</span>
      	<span>Delectus repellendus aliquid pariatur illo expedita perferendis non possimus ipsa nesciunt dignissimos facere nemo minus molestias. Neque nostrum nisi non sint rerum labore dolore fugit aperiam quas veritatis dolorem veniam!</span>
      	<span>Amet explicabo error quibusdam sunt architecto reprehenderit id officia aspernatur libero vero. Vero similique consectetur temporibus obcaecati sed ea dolorum corporis quam maxime sequi quas eaque doloremque laudantium. Numquam molestias.</span>
      	<span>Odit quod atque vel natus nostrum accusantium sapiente voluptates delectus repellendus quos debitis nam repudiandae. Molestias vel minima quae labore aperiam rem delectus culpa alias. Neque excepturi perspiciatis numquam eligendi.</span>
      	<span>Quidem magnam qui deleniti obcaecati maxime sint tenetur dolore omnis adipisci reprehenderit laborum ut sapiente nam alias atque laboriosam pariatur mollitia inventore necessitatibus placeat? Reprehenderit eos dolore praesentium aspernatur aut.</span>
      	<span>Similique quis rerum repudiandae ipsa qui harum. Consectetur id laboriosam dicta quidem ullam asperiores cupiditate. Culpa id ipsa fuga voluptas quaerat nobis quia quos corporis pariatur voluptate inventore natus voluptatum.</span>
      	<span>Velit ratione recusandae ea neque quidem magni eveniet dolores fuga repellendus voluptas voluptatibus alias molestias perspiciatis nisi itaque et officiis. Placeat repudiandae voluptas sint asperiores modi maxime quaerat veniam atque.</span>
      	<span>Temporibus dolores consequuntur id nobis dolor iusto hic! Fugiat modi incidunt non aliquid magnam quibusdam animi velit rerum adipisci sapiente voluptatum quos sit architecto placeat fuga. Dolores voluptas voluptate facilis!</span>
      	<span>Sequi nulla nobis provident odio temporibus ex debitis rerum expedita tempore dolore perspiciatis iste labore pariatur. Molestias sed qui expedita soluta magni tenetur harum aliquam rerum quia itaque quam doloremque!</span>
      	<span>Recusandae quis unde quasi laboriosam dolore voluptatum sequi necessitatibus corporis labore nesciunt consequuntur iusto tenetur ipsam exercitationem earum officiis sit officia blanditiis explicabo ex. Porro laudantium recusandae natus repellendus dolorem.</span>
      	<span>Dolor est ad voluptas soluta reprehenderit tempora molestiae unde eum minima odio asperiores non quidem voluptate adipisci deserunt placeat voluptatem qui iste nisi nesciunt consectetur blanditiis quia iusto. Neque amet!</span>
      	<span>Aperiam est nesciunt optio perspiciatis iste consequuntur autem perferendis pariatur soluta mollitia atque maxime libero recusandae quia dolores omnis laboriosam eos quidem minima voluptatum sit necessitatibus deleniti molestiae nostrum facilis.</span>
      	<span>Dolorem consectetur eveniet quam eum dignissimos velit iusto dolorum laborum eligendi consequuntur? Architecto ullam quisquam alias voluptate optio soluta necessitatibus atque ab nam aspernatur labore commodi quaerat nemo vitae praesentium.</span>
      	<span>Reprehenderit facere voluptatibus velit at quo quae maiores cumque debitis sapiente fugiat ullam sint ut provident dolores id distinctio veniam suscipit iure necessitatibus aperiam dolor aut non inventore dolore est!</span>
      	<span>Deleniti laboriosam qui odio reiciendis rem magnam quasi voluptatem accusantium soluta vitae minus quam pariatur ipsa. Fuga quam reiciendis sequi quo sit laboriosam quibusdam ut magni laborum est accusantium recusandae.</span>
      	<span>Aut nam dolores hic labore porro beatae nihil neque libero aspernatur eveniet fuga itaque a dignissimos nobis laborum minima molestias saepe debitis est soluta ad ea ut ducimus rem culpa.</span>
      	<span>Cupiditate cumque rerum excepturi ipsum maiores amet id eaque sint quibusdam ducimus praesentium culpa similique earum in asperiores iste ipsa. Excepturi doloribus esse nihil et placeat laborum tenetur accusantium consequatur.</span>
      	<span>Molestias autem eum molestiae hic distinctio expedita aliquid ipsam consequuntur perspiciatis impedit tempore quas ipsa voluptas nemo iure sint et nobis voluptatum numquam a! Sit dolores ex repellat ullam quis!</span>
      	<span>Eos ducimus facere accusamus pariatur omnis architecto rerum voluptas facilis obcaecati et dolores fugiat impedit harum voluptatem sequi velit temporibus cumque! Recusandae aperiam laborum id quas vero quisquam laboriosam provident!</span>
      	<span>Molestiae nemo ipsam numquam rem placeat quos consequuntur dicta similique enim tempore. Blanditiis ullam ipsam necessitatibus doloremque repudiandae illum dicta aut cum laborum quam. Velit placeat doloribus rerum? Animi error!</span>
      	<span>Excepturi consectetur a fugiat dolor ex vero totam sunt suscipit molestias. Distinctio corrupti sapiente tenetur saepe inventore nemo perferendis deserunt ex magni dolorum quas adipisci voluptatem iste aliquam ipsa nesciunt.</span>
      	<span>Harum ullam accusantium nam praesentium numquam sit impedit officiis non atque consequuntur quos recusandae id aliquid aperiam labore quod omnis doloremque iure mollitia rerum explicabo blanditiis commodi. Non numquam voluptate.</span>
      	<span>Maxime voluptates assumenda rerum quis nemo ea saepe delectus illum magnam autem accusamus reiciendis dignissimos temporibus doloribus sint maiores beatae rem porro aperiam vero minus quae dolores cumque. Rerum consequatur.</span>
      	<span>Consequatur reprehenderit blanditiis voluptatum vero quae impedit natus quaerat repudiandae rem nesciunt ipsam odio totam cumque qui inventore ab dolore aut optio itaque dicta ullam assumenda nihil facilis rerum nostrum.</span>
      	<span>Libero dolorum non dignissimos porro quisquam eligendi quibusdam ex delectus aperiam fugit reprehenderit recusandae enim magni atque aliquam odit commodi quis laborum impedit animi. Neque unde fuga quis cumque eos.</span>
      	<span>Soluta quasi mollitia consequuntur blanditiis suscipit consectetur dignissimos numquam nobis autem nulla ad quas consequatur amet tenetur eaque nostrum animi tempora veniam earum accusamus non ut atque beatae excepturi molestiae.</span>
      	<span>Quae error voluptas ratione veniam architecto iste odit magnam aliquam perspiciatis assumenda a dolorem magni dignissimos accusantium facere neque aut. Atque saepe quia corporis dolor numquam omnis ipsum a delectus!</span>
      	<span>Porro voluptas id voluptatem. Repellat aperiam magni deserunt minima sed nulla dolor fugiat. At sint saepe dolor aliquid magni sit repudiandae placeat optio harum molestias obcaecati quod sunt numquam ipsa.</span>
      	<span>Nulla modi commodi consequuntur perferendis expedita aut deleniti aliquid corrupti voluptates sed voluptatum nobis quae a cumque inventore sit autem velit in ab qui asperiores veritatis eius assumenda placeat dolores!</span>
      	<span>Accusantium excepturi id maiores incidunt modi libero itaque distinctio aperiam neque nulla perspiciatis necessitatibus adipisci facilis magni veritatis in magnam rem placeat earum maxime est voluptatum voluptatem autem deserunt porro.</span>
      	<span>Expedita dicta odio iure ducimus blanditiis minima sed mollitia sint in eius optio ratione accusantium eaque perferendis temporibus autem quisquam sit a culpa quos! Provident laboriosam omnis veritatis dicta enim?</span>
      	<span>Explicabo doloremque quam optio excepturi quidem et molestias quibusdam dolor numquam ab! Unde rerum recusandae nam optio inventore. Quidem animi accusantium laborum quisquam modi porro sequi harum itaque suscipit culpa.</span>
      	<span>Deleniti ducimus veritatis repellendus repudiandae inventore ex sapiente ad porro tenetur nam nostrum tempore ipsam nobis id laudantium fugit totam ut odio sint praesentium eligendi voluptate dolores fuga voluptates eius.</span>
      	<span>Harum molestiae sunt illo inventore dicta delectus dolor at vero fuga optio assumenda corrupti aliquid et illum consectetur sint distinctio ipsum deleniti laborum culpa mollitia iure libero officiis modi placeat.</span>
      	<span>Nulla ipsum alias rem eum magni tempore et esse ab nam corporis consequuntur aperiam id ut hic doloremque distinctio nesciunt doloribus voluptatibus dignissimos temporibus quibusdam reiciendis ipsam laudantium! Corrupti dolorem.</span>
      	<span>Quis quaerat possimus soluta autem maiores molestias at tempore et quae magni illum quo consequuntur beatae exercitationem dolorem ab laudantium. Commodi nobis sunt sequi modi placeat vel ipsam voluptates consequatur.</span>
      	<span>Iure eos vero omnis in ipsum quos sequi modi accusamus molestias itaque cumque facere doloremque neque voluptate quia reprehenderit exercitationem. Aut dolores accusamus fugiat veritatis sequi neque ea commodi quia.</span>
      	<span>Doloremque minus illo accusamus dolore sequi odit iusto tempore fugiat iure reiciendis laboriosam aperiam officia modi minima fugit fuga ab repellendus ut illum veniam non officiis numquam? Illo doloremque aliquid.</span>
      	<span>Possimus sunt ipsa nisi odit perspiciatis neque sed dolores reprehenderit quaerat dolorem! Placeat rem culpa ab repellat cumque ipsam alias possimus nemo consequuntur harum dolore reprehenderit. Quo libero incidunt quis?</span>
      	<span>Quos necessitatibus vitae magnam laboriosam assumenda autem excepturi quae dolorum consequuntur explicabo laudantium nesciunt iure at odio earum blanditiis enim ut itaque aperiam tempora recusandae nostrum quo dignissimos omnis magni.</span>
      	<span>Porro itaque beatae fugiat ipsa numquam distinctio aliquam officia vel ea vero dolores consequuntur eius velit! Ut quod modi nobis animi! Nisi distinctio tempore id recusandae dicta placeat repellat fuga.</span>
      	<span>Consequuntur harum sit commodi numquam! Nostrum molestiae vel velit rem facere delectus voluptate quod maiores doloremque voluptates vero similique amet totam consequuntur nam corporis blanditiis provident adipisci sed necessitatibus! Reiciendis.</span>
      	<span>Facilis tempore animi repellendus debitis at autem sit dicta voluptates error aliquam eaque quibusdam fuga vero sequi non illum hic soluta molestiae sapiente cumque porro dignissimos optio suscipit doloremque architecto.</span>
      	<span>Facilis quasi hic cumque non laborum expedita tempora ex officia quo incidunt consequatur eum magni molestiae molestias quisquam voluptatum sapiente similique voluptatem corporis ad eveniet ea ratione iste veniam atque!</span>
      	<span>Voluptates recusandae molestias temporibus eaque ad cupiditate quaerat totam commodi minima quidem tempore beatae necessitatibus maxime. Nulla deserunt inventore repudiandae voluptas natus consequatur possimus molestiae quae adipisci recusandae et amet!</span>
      	<span>Dicta nesciunt in voluptatem iusto qui eaque fuga cum modi quasi hic dolorem illo id voluptas quae impedit eveniet praesentium possimus repellendus incidunt rerum soluta officia quidem sed officiis temporibus.</span>
      	<span>Consequatur in iure quaerat voluptates temporibus debitis hic aliquid similique perferendis voluptas enim alias suscipit atque saepe rerum excepturi earum aliquam soluta labore necessitatibus eveniet quia maiores molestias minus expedita.</span>
      	<span>Odit aliquid rem eligendi qui et repudiandae beatae impedit temporibus reprehenderit rerum tempore magni voluptatibus voluptatem ullam earum recusandae aperiam ipsam iusto placeat soluta labore nam sint laboriosam quos vel.</span>
      	<span>Similique sequi quo non placeat in cumque officia amet obcaecati temporibus laudantium? Fugit illo saepe iure molestias qui cumque asperiores dolorum earum vel provident architecto ipsam rem minus consectetur officia.</span>
      	<span>Necessitatibus nobis fuga possimus blanditiis voluptatum beatae ex soluta delectus atque molestias praesentium omnis recusandae incidunt natus tenetur architecto minima consequuntur amet eos temporibus aperiam inventore magni. Voluptatibus velit aliquam.</span>
      	<span>Ab voluptas atque perferendis temporibus sapiente voluptates vel pariatur voluptate nesciunt dicta consequuntur possimus non laboriosam mollitia porro fuga aliquam! Porro esse reprehenderit at iste quis ab aut possimus quo.</span>
      	<span>Dolores modi velit accusantium asperiores ut obcaecati voluptates ducimus pariatur quibusdam in unde incidunt sequi vel id dolore. Animi odit ab quaerat itaque facere aperiam quia laborum eius ut eaque.</span>
      	<span>Voluptate officiis cum praesentium similique vel harum atque quibusdam accusantium dolor beatae! Nam cumque nostrum rerum deleniti enim eveniet animi nihil eius nisi autem nemo ad laboriosam id! Excepturi incidunt.</span>
      	<span>Vitae natus assumenda culpa dolorem. Facere aperiam corporis a repudiandae error maiores deserunt repellat omnis aliquid minus at nam unde perspiciatis rem reprehenderit tenetur quo. Temporibus ipsa veniam necessitatibus nobis.</span>
      	<span>Veritatis doloremque possimus cum blanditiis porro eveniet quia earum dolore voluptates velit amet perspiciatis odio facere fugit necessitatibus. Iusto totam ab aspernatur dolore quidem consectetur perspiciatis aliquid ratione similique deleniti!</span>
      	<span>Dignissimos ullam omnis facilis ut minus laborum assumenda molestias quod consequuntur quo magnam inventore voluptatibus repudiandae fuga reprehenderit nesciunt est ex voluptate doloribus odit facere saepe nobis minima sapiente rem.</span>
      	<span>Minima nulla quae dolor aperiam porro quis odit ipsum deserunt consequatur nemo culpa ab iste obcaecati id labore voluptate eaque autem temporibus magni incidunt harum. Illum perferendis placeat repellendus cum.</span>
      	<span>Consequatur fuga natus temporibus quas ullam nulla mollitia ab dolorum maiores nam iste illum dolore cumque pariatur impedit architecto officiis recusandae quo ipsam reprehenderit obcaecati doloribus inventore laborum laboriosam facilis?</span>
      	<span>Quod officia et iure unde iusto quam omnis cupiditate molestias facere provident vel fugiat officiis illum aspernatur eligendi fugit repudiandae odio porro vero accusamus explicabo incidunt aut commodi consequatur excepturi?</span>
      	<span>Magni aliquam fuga illum sit atque iure aspernatur repudiandae provident ab consectetur sequi sapiente sed. Dolorum rerum facere qui aperiam sequi nobis aspernatur corporis dignissimos beatae porro voluptates quos soluta.</span>
      	<span>Nam tempore ut quas explicabo expedita consectetur dolor reiciendis doloremque temporibus enim quod quisquam consequatur perferendis optio beatae reprehenderit repellendus aliquid cum tempora fugiat distinctio sequi praesentium sint. Totam consequuntur!</span>
      	<span>Veritatis labore assumenda deserunt enim molestias corporis officiis iusto possimus excepturi hic quod sit facilis velit ratione quas modi magnam. Unde veniam doloremque sit vero nihil deserunt aut repellat recusandae!</span>
      	<span>Necessitatibus perspiciatis et consectetur vero architecto sed. Molestias sed esse quia ducimus provident dolores accusantium placeat totam. Nostrum harum voluptatum dicta magni ducimus sed ipsa odit alias. Numquam illum eveniet!</span>
      	<span>Labore praesentium sapiente perspiciatis placeat quo rem quidem dolores amet dicta dolorum voluptate itaque ipsam impedit excepturi modi pariatur ex ipsum nobis dolor maxime architecto non consequuntur fugiat exercitationem fuga.</span>
      	<span>Nisi aliquid optio maxime beatae dolorum esse sed! Accusantium quod assumenda obcaecati nobis dicta velit consectetur repellat in dolores illo incidunt excepturi quasi. Quaerat rem tenetur velit maiores inventore vero!</span>
      	<span>Vero sequi explicabo minus rerum eligendi facere quam deleniti laudantium nostrum eum! Est porro cumque incidunt temporibus dolores ex aspernatur minima optio aliquid dolor corporis sequi eveniet veritatis nemo quia.</span>
      	<span>Enim debitis reprehenderit tempore necessitatibus ipsum in nemo iste nulla. Accusantium beatae optio nisi ducimus laborum soluta voluptatem asperiores laboriosam quia sapiente! Impedit nobis earum quod laudantium praesentium aliquam ratione.</span>
      	<span>Nam quibusdam eius repellat voluptate cupiditate necessitatibus optio dolores quisquam molestias doloremque. Nulla voluptatum repellendus qui nisi temporibus eius earum eos magni rerum enim tempore dicta cupiditate ea optio debitis.</span>
      	<span>Aliquid fugit unde id magnam voluptatibus voluptatem eveniet est laborum odit minima. Possimus saepe nulla quaerat deserunt sequi eos architecto non eum quod voluptas deleniti nostrum dolorum reprehenderit accusantium tempore?</span>
      	<span>Eaque eveniet non necessitatibus similique nulla libero suscipit illum illo assumenda magni nam cumque optio molestias id veritatis sunt quae iure porro aut sint sapiente dicta culpa rerum soluta asperiores.</span>
      	<span>Consectetur commodi tenetur harum accusantium reprehenderit eligendi officiis sit laborum iste facere ab vitae eum sint est libero laboriosam mollitia aut dolorem iure similique magnam suscipit reiciendis ducimus ut sed.</span>
      	<span>Modi illum magnam quibusdam officia hic incidunt vitae error dolore tempora enim eum optio mollitia aperiam esse nam possimus natus. Molestiae nisi facilis at corporis doloribus aliquam tempora accusantium nemo!</span>
      	<span>Minus fuga a quis cumque nam veniam aspernatur perspiciatis ducimus maxime ipsa voluptatibus voluptate mollitia beatae fugit ad eaque sed iure cum qui temporibus autem recusandae omnis explicabo ullam quo.</span>
      	<span>Voluptas nostrum nesciunt nam perferendis fuga cumque ipsa modi amet. Harum reprehenderit iusto assumenda dignissimos mollitia alias expedita maiores animi eius autem nesciunt aut error consectetur corporis veritatis obcaecati est?</span>
      	<span>Nam voluptates quod at cum eum sunt eos quos libero accusantium fugiat nesciunt similique repellendus autem obcaecati sed itaque repudiandae soluta deserunt veniam neque eaque reprehenderit voluptatum excepturi ut quae.</span>
      	<span>Itaque in hic asperiores totam repellendus autem assumenda fugit eaque! Fugiat incidunt numquam natus alias magnam eos autem omnis itaque! Omnis eveniet quae labore sunt quod consequuntur adipisci voluptates sint.</span>
      	<span>Quae numquam placeat fugit nihil esse temporibus explicabo perspiciatis beatae. Soluta cupiditate suscipit ducimus rem molestias repellat accusamus odit asperiores fugit quae nulla quos neque at iure numquam nam odio?</span>
      	<span>Corporis dolorum quas animi nihil rerum quos optio placeat iure dolores labore. Soluta animi tempore eum reiciendis nihil distinctio illo consequatur ipsum doloribus voluptatem similique eaque maiores in voluptatibus temporibus.</span>
      	<span>Modi dicta animi minus distinctio a perspiciatis consequuntur error soluta dignissimos quas voluptas porro ea tempora fugiat nostrum at dolor perferendis iusto facilis voluptates inventore maiores esse reiciendis iure delectus?</span></p>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp" %>
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