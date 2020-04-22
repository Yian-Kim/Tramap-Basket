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


</style>
</head>
<body>
	<!--================ Start Header Menu Area =================-->
	<jsp:include page="/inc/header.jsp"></jsp:include>
	<!--================ End Header Menu Area =================-->


	<!-- 장바구니  -->
	<!-- 	<main class="site-main">

	<div class="container" id="basket-area">
		<div id="basketbtn"></div>
		<i class="ti-arrow-circle-right" /></i>
		<div id="basket"></div>
	</div> -->



	<!--================ Hero banner start =================-->
	<!--================ Hero Carousel start =================-->
	<!--================ Hero Carousel end =================-->
	<!-- ================ trending product section start ================= -->
	<section class="section-margin calc-60px">
		<div class="container" style="border: 1px solid black;">
			<div class="section-intro pb-60px">
				<p>Popular Item in the market</p>
				<h2>
					<!-- Trending <span class="section-intro__style">Product</span> -->
					클릭해서 장바구니에 담아주세요
				</h2>
			</div>


	
		</div>
	</section>
	<!-- ================ trending product section end ================= -->

	<!-- 	</main> -->


	<!--================ Start footer Area  =================-->
	<jsp:include page="/inc/footer.jsp"></jsp:include>
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp"%>
	<!-- 이곳 -->

	<script>

	</script>

</body>
</html>