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

/* 마이하나 */

/* font API */
/* @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css); 
@import url(//www.hanatour.com/_css/hana/common/font.css); */

/* ÇÃ·ÎÆÃ ¹è³Ê */
.floating_content {
	font-size: 14px;
	font-family: 'Nanum Gothic', 'Malgun Gothic', 'Dotum',
		'Apple SD Gothic Neo', Helvetica, Sans-serif;
	color: #444;
	text-align: center;
	line-height: 18px;
	letter-spacing: -1px
}

.floating_content ul li {
	line-height: 100%
}

.floating_content button {
	border: 0
}

.floating_content .floating_menu.fixed {
	position: fixed;
}

.floating_content.fixed {
	position: fixed;
	background-color: #fbfbfb;
}

.floating_content { /*z-index: 10000;*/
	z-index: 4999;
	position: fixed;
	border-top: 1px solid #DEE0E1;
	height: 100%;
	border-left: 1px solid #CFD2D3;
	border-bottom: 1px solid #CFD2D3;
	background-color: #FBFBFB;
	text-align: center;
}

.floating_content.close {
	background-color: transparent;
	top: 50% !important;
	margin-top: -40px;
	border-left: none;
}

.floating_content .floating_menu {
	z-index: 100;
	position: absolute;
	font-size: 13px;
}

.floating_content.close .floating_menu {
	width: 37px;
}

.floating_content.close .floating_menu .btn_floating {
	position: absolute;
	left: -17px;
	top: 19px;
	width: 16px;
	height: 27px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat -33px -204px
}

.floating_content.close .floating_menu .btn_floating:hover {
	background-position: 0 -204px;
}

.floating_content.open .floating_menu {
	width: 109px;
}

.floating_content.open .floating_menu .btn_floating {
	position: absolute;
	left: -21px;
	top: 19px;
	width: 20px;
	height: 30px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat 0 -312px;
	border: 1px solid #cfd2d3;
	border-right: none;
}

.floating_content.open .floating_menu .btn_floating:hover {
	background-position: -32px -312px;
}

.floating_content .floating_menu .close_list {
	margin-top: 1px;
	border-bottom: 1px solid #d5d5d5;
	overflow: hidden;
}

.floating_content .floating_menu .close_list li {
	border-bottom: 1px solid #EEEEEE;
	border-left: 1px solid #d5d5d5;
	float: left;
	width: 39px;
	height: 39px;
}

.floating_content .floating_menu .close_list li a {
	display: block;
	width: 37px;
	height: 36px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat
}

.floating_content .floating_menu .close_list li.myhana button {
	display: block;
	width: 39px;
	height: 39px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat -130px -312px;
	cursor: pointer;
}

.floating_content .floating_menu .close_list li.top a {
	display: block;
	width: 39px;
	height: 39px;
	background-position: -250px -312px;
}
/*
.floating_content .floating_menu .close_list li.first_my a {background-position: -200px 0;}
.floating_content .floating_menu .close_list li.sec_mlg a {background-position: -200px -46px;}
.floating_content .floating_menu .close_list li.third_product a {background-position: -200px -92px;}*/
.floating_menu a:hover {
	text-decoration: underline
}

.floating_menu .quick_mov {
	overflow: hidden;
	border-bottom: 1px solid #CFD2D3
}

.floating_menu .quick_mov .go_event {
	display: block;
	float: left;
	width: 54px;
	height: 31px;
	border-right: 1px solid #EEEEEE;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat 19px 7px
}

.floating_menu .quick_mov .go_event:hover {
	background-position: -44px 7px;
}

.floating_menu .quick_mov .go_mobile {
	display: block;
	float: left;
	width: 54px;
	height: 31px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat 20px -56px
}

.floating_menu .quick_mov .go_mobile:hover {
	background-position: -43px -56px;
}

.floating_menu .quick_mov .go_coupon {
	display: block;
	float: left;
	width: 54px;
	height: 31px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat 16px -382px
}

.floating_menu .quick_mov .go_coupon:hover {
	background-position: -48px -382px;
}

.floating_menu .floating_cont .millage_li {
	padding: 13px 0 12px;
	border-bottom: 1px solid #EEEEEE;
	background-color: #F5F5F5;
}

.floating_menu .floating_cont .millage_li .myhana {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
	color: #747c8e
}

.floating_menu .floating_cont .millage_li .name {
	display: block;
	margin-bottom: 6px;
	font-size: 12px;
	color: #444444;
	line-height: 20px
}

.floating_menu .floating_cont .millage_li .mlg_inquiry {
	font-size: 11px;
	color: #e45b85
}

.floating_menu .floating_cont .millage_li .mlg_inquiry .go_inq {
	display: block;
	height: 19px;
	margin-top: 5px;
	padding-right: 14px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat -354px -270px;
	*background-position: -354px -271px;
}

.floating_menu .floating_cont .myinfo {
	padding: 12px 0 3px;
	border-bottom: 1px solid #EEEEEE;
	background-color: #FBFBFB;
}

.floating_menu .floating_cont .myinfo a {
	display: block;
	padding-bottom: 5px;
	font-size: 12px;
	color: #666
}

.floating_menu .floating_cont .myinfo a:hover {
	color: #f63d8b
}

.floating_menu .floating_cont .view_product {
	padding: 12px 0 5px 0;
	border-bottom: 1px solid #EEEEEE;
	background-color: #FBFBFB;
}

.floating_menu .floating_cont .view_product .tit {
	margin-bottom: 4px;
	font-size: 12px;
	font-weight: bold;
	color: #444444;
}

.floating_menu .floating_cont .view_product .tit .num {
	color: #f63d8b
}

.floating_menu .floating_cont .view_product .non_view {
	padding: 35px 0;
	font-size: 11px;
	color: #999
}

.floating_menu .floating_cont .view_product .btn_up {
	display: inline-block;
	height: 18px;
	width: 40px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat -415px -69px
}

.floating_menu .floating_cont .view_product .btn_up:hover {
	background-position: -355px -69px
}

.floating_menu .floating_cont .view_product .btn_down {
	display: inline-block;
	height: 18px;
	width: 40px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat -415px -120px
}

.floating_menu .floating_cont .view_product .btn_down:hover {
	background-position: -355px -120px
}

.floating_menu .floating_cont .view_product .product_float_list li:first-child
	{
	margin-top: 0
}

.floating_menu .floating_cont .view_product .product_float_list li {
	position: relative;
	width: 89px;
	margin: 11px auto 0;
}

.floating_menu .floating_cont .view_product .product_float_list li .btn_del
	{
	position: absolute;
	top: 0;
	right: 0;
	width: 13px;
	height: 13px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat -426px 0
}

.floating_menu .floating_cont .view_product .product_float_list li .goods_desc
	{
	display: block;
}

.floating_menu .floating_cont .view_product .product_float_list li .goods_desc .p_tit
	{
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 79px;
	height: 33px;
	padding: 18px 5px 5px 5px;
	font-size: 11px;
	color: #FFF
}

.floating_menu .floating_cont .view_product .product_float_list li .goods_desc .p_tit b
	{
	display: block;
	overflow: hidden;
	width: 79px;
	height: 29px;
	text-align: left;
	line-height: 16px
}

.floating_menu .floating_cont .view_product .product_float_list li .goods_desc:hover .p_tit
	{
	display: block;
	background: url('//image1.hanatour.com/_images/main/bg_floating.png')
		no-repeat 0 0;
}

.floating_menu .floating_cont .view_product .product_float_list li .goods_desc .price
	{
	display: block;
	margin-top: 5px;
	font-size: 11px;
	color: #f63d8b !important;
	letter-spacing: 0
}

.floating_menu .floating_cont .ars {
	padding: 11px 0;
	background-color: #FBFBFB;
}

.floating_menu .floating_cont .ars p {
	margin-bottom: 5px;
}

.floating_menu .floating_cont .ars a {
	font-size: 11px;
	color: #828a8f
}

.floating_menu .floating_cont .ars a:hover {
	color: #f63d8b
}

.floating_menu .btn_top {
	display: block;
	width: 69px;
	height: 21px;
	margin: 0 auto 50px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat -370px -198px
}

.floating_menu .btn_top:hover {
	background-position: -291px -198px;
}

.floating_menu .close_list {
	width: 37px
}

.floating_menu .close_list li {
	
}

.floating_menu .close_list li a {
	display: block;
	width: 37px;
	height: 36px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat
}

.floating_menu .close_list li a.first_my {
	background-position: -200px 0;
}

.floating_menu .close_list li a.sec_mlg {
	background-position: -200px -46px;
}

.floating_menu .close_list li a.third_product {
	background-position: -200px -92px;
}

.floating_menu .close_list li a.top {
	background-position: -200px 138px;
}

/* Ãâ¹ßµµ½Ã º¯°æ */
.floating_dim {
	overflow: hidden;
	position: fixed;
	top: 0px;
	left: 0; /*z-index: 10010;*/
	z-index: 5000;
	width: 100%;
	height: 100%;
	background: #000;
	-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";
	filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=50);
	opacity: .5;
}

.change_tour {
	margin-bottom: 15px;
	padding: 10px 0 15px;
	background-color: #d7567d;
	text-align: center;
}

.change_tour .title {
	margin-bottom: 7px;
	font-size: 11px;
	background: url('//image1.hanatour.com/_images/main/floating_set.png')
		no-repeat12px -258px;;
	color: #FFF
}

.change_tour .selbox11 {
	height: 20px;
	margin: 0 auto;
	padding: 3px 0 0 0;
	border: 0 none;
	font-size: 12px
}

.change_tour .selectbox .display .arrow_btn {
	width: 20px
}

.change_tour .selectbox .display .arrow_btn .arrow {
	height: 20px;
	background-position: 6px -172px
}

.change_tour .selectbox.focused .display .text {
	font-size: 12px
}

.layer_pop {
	z-index: 10020;
	position: absolute;
	padding: 105px 0 30px 0;
	border: 2px solid #41444D;
	background: #FFF url('//image1.hanatour.com/_images/main/ico_check.gif')
		no-repeat center 15px;
	color: #444
}

.layer_pop .cont {
	margin-bottom: 35px;
}

.layer_pop .location {
	color: #f63d8b
}

.layer_pop .btn_area .btn_cansel {
	width: 98px;
	height: 33px;
	margin: 0 2px;
	border: 1px solid #D5D5D5;
	background-color: #FFF;
	color: #666;
}

.layer_pop .btn_area .btn_confirm {
	width: 98px;
	height: 33px;
	margin: 0 2px;
	border: 1px solid #E45B85;
	background-color: #E45B85;
	color: #FFF;
}

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
	background-color: white;
	/* background-color: transparent; */
	margin: 0;
	border: 1px solid #CCCCCC;
	border-radius: 5px;
	height: 600px;
	overflow-y: scroll;
	z-index: 1;
}

#tblBasket {
	border: 1px;
	border-color: hotpink;
	width: 200px;
	height: 300px;
	align: center;
}

#tblBasket>tr {
	background-color: pink;
	align: center;
}

#tblBasket>tr>td {
	width: 80px;
	height: 30px;
}

.tourspot {
	border: 1px solid #DDDDDD;
}

/* _expand-checkedbox */
.expand-checkedbox {
	margin-top: 1px;
	display: block;
	padding: 0px;
	height: 73px;
	text-align: center;
	color: #fff;
	font-size: 1.5em;
	border-bottom: 1px solid #D3DDE8;
	border-bottom: 1px solid rgba(255, 255, 255, .4);
	box-shadow: inset 0 0 80px 0 rgba(255, 255, 255, .3)
}

.checkbox-center {
	display: table;
	margin-left: auto;
	margin-right: auto
}

.toggle--checkbox {
	display: none
}

.toggle--btn {
	display: block;
	margin: 0 auto;
	font-size: 1.4em
}

.toggle--btn:hover {
	cursor: pointer
}

.toggle--btn, .toggle--btn:after, .toggle--btn:before, .toggle--checkbox,
	.toggle--checkbox:after, .toggle--checkbox:before, .toggle--feature,
	.toggle--feature:after, .toggle--feature:before {
	transition: all 250ms ease-in
}

.toggle--btn:after, .toggle--btn:before, .toggle--checkbox:after,
	.toggle--checkbox:before, .toggle--feature:after, .toggle--feature:before
	{
	content: '';
	display: block
}

/* 셀렉트 박스 */
.layer {
	display: none;
}

/* 버튼 공통 */
/* .toggle--daynight .toggle--btn, .toggle--like .toggle--btn {
	position: relative;
	height: 70px;
	width: 125px;
	border-radius: 70px
}

.toggle--daynight .toggle--btn:before, .toggle--like .toggle--btn:before
	{
	position: absolute;
	top: 2px;
	left: 4px;
	width: 56px;
	height: 56px;
	border-radius: 50%
} */
/* _toggle--daynight */
/* .toggle--daynight {
	float: left
}

.toggle--daynight .toggle--btn {
	border: 5px solid #1c1c1c;
	background-color: #3c4145
}

.toggle--daynight .toggle--btn:before {
	background-color: #fff;
	border: 5px solid #e3e3c7
}

.toggle--daynight .toggle--btn:after {
	position: absolute;
	top: 62%;
	left: 39px;
	z-index: 10;
	width: 11.2px;
	height: 11.2px;
	opacity: 0;
	background-color: #fff;
	border-radius: 50%;
	box-shadow: #fff 0 0, #fff 3px 0, #fff 6px 0, #fff 9px 0, #fff 11px 0,
		#fff 14px 0, #fff 16px 0, #fff 21px -1px 0 1px, #fff 16px -7px 0 -2px,
		#fff 7px -7px 0 1px, #d3d3d3 0 0 0 4px, #d3d3d3 6px 0 0 4px, #d3d3d3
		11px 0 0 4px, #d3d3d3 16px 0 0 4px, #d3d3d3 21px -1px 0 5px, #d3d3d3
		16px -7px 0 1px, #d3d3d3 7px -7px 0 5px;
	transition: opacity .1s ease-in
}

@
keyframes starry_star { 50%{
	background-color: rgba(255, 255, 255, .1);
	box-shadow: #fff 30px -3px 0 0, #fff 12px 10px 0 -1px,
		rgba(255, 255, 255, .1) 38px 18px 0 1px, #fff 32px 34px 0 0,
		rgba(255, 255, 255, .1) 20px 24px 0 -1.5px, #fff 5px 38px 0 1px
}

}
@
keyframes bounceIn { 0%{
	opacity: 0;
	transform: scale(.3)
}

50%{
opacity
:
100;transform
:scale
(1
.1
)
}
55%{
transform
:scale
(1
.1
)
}
75%{
transform
:scale
(
.9
)
}
100%{
opacity
:
100;transform
:scale(1)
}
}
.toggle--daynight .toggle--feature {
	display: block;
	position: absolute;
	top: 9px;
	left: 52.5%;
	z-index: 20;
	width: 4px;
	height: 4px;
	border-radius: 50%;
	background-color: #fff;
	box-shadow: rgba(255, 255, 255, .1) 30px -3px 0 0,
		rgba(255, 255, 255, .1) 12px 10px 0 -1px, #fff 38px 18px 0 1px,
		rgba(255, 255, 255, .1) 32px 34px 0 0, #fff 20px 24px 0 -1.5px,
		rgba(255, 255, 255, .1) 5px 38px 0 1px;
	animation: starry_star 5s ease-in-out infinite
}

.toggle--daynight .toggle--feature:before {
	position: absolute;
	top: -2px;
	left: -25px;
	width: 18px;
	height: 18px;
	background-color: #fff;
	border-radius: 50%;
	border: 5px solid #e3e3c7;
	box-shadow: #e3e3c7 -28px 0 0 -3px, #e3e3c7 -8px 24px 0 -2px;
	transform-origin: -6px 130%
}

.toggle--daynight .toggle--checkbox:checked+.toggle--btn {
	background-color: #9ee3fb;
	border: 5px solid #86c3d7
}

.toggle--daynight .toggle--checkbox:checked+.toggle--btn:before {
	left: 55px;
	background-color: #ffdf6d;
	border: 5px solid #e1c348
}

.toggle--daynight .toggle--checkbox:checked+.toggle--btn:after {
	opacity: 100;
	animation-name: bounceIn;
	animation-duration: .6s;
	animation-delay: .1s;
	animation-fill-mode: backwards;
	animation-timing-function: ease-in-out
}

.toggle--daynight .toggle--checkbox:checked+.toggle--btn>.toggle--feature
	{
	opacity: 0;
	box-shadow: rgba(255, 255, 255, .1) 30px -3px 0 -4px,
		rgba(255, 255, 255, .1) 12px 10px 0 -5px, #fff 38px 18px 0 -3px,
		rgba(255, 255, 255, .1) 32px 34px 0 -4px, #fff 20px 24px 0 -5.5px,
		rgba(255, 255, 255, .1) 5px 38px 0 -3px;
	animation: none
}

.toggle--daynight .toggle--checkbox:checked+.toggle--btn>.toggle--feature:before
	{
	left: 25px;
	transform: rotate(70deg)
} */
/* _toggle--like */
/* .toggle--like {
	float: left;
	margin-left: 30px
}

.toggle--like .toggle--btn {
	border: 5px solid #0865B0;
	background-color: #3498db
}

.toggle--like .toggle--btn:before {
	background-color: #f2dd68;
	border: 5px solid #e5ce5e
}

.toggle--like .toggle--feature {
	position: absolute;
	left: 14px;
	top: 32%;
	width: 7px;
	height: 7px;
	border-radius: 50%;
	background-color: #995710;
	box-shadow: 28px 0 0 0 #995710
}

.toggle--like .toggle--feature:before {
	position: absolute;
	left: 0;
	top: 11px;
	width: 36px;
	height: 17px;
	background-color: #995710;
	border-radius: 36px 36px 0 0
}

.toggle--like .toggle--feature:after {
	position: absolute;
	left: 9px;
	top: 21px;
	width: 17px;
	height: 7px;
	background-color: #d8aa2b;
	border-radius: 17px 17px 0 0
}

.toggle--like .toggle--checkbox:checked+.toggle--btn {
	background-color: #e25d5d;
	border: 5px solid #AD1000
}

.toggle--like .toggle--checkbox:checked+.toggle--btn:before {
	transform: translate(51px, 0)
}

.toggle--like .toggle--checkbox:checked+.toggle--btn .toggle--feature {
	transform: translate(53px, 0)
}

.toggle--like .toggle--checkbox:checked+.toggle--btn .toggle--feature:before
	{
	border-radius: 0 0 36px 36px;
	top: 11px
}

.toggle--like .toggle--checkbox:checked+.toggle--btn .toggle--feature:after
	{
	top: 21px;
	border-radius: 50%
} */
/* _expand-checkedbox-content */
/* #expand-checkedbox-content {
	margin-top: 1px;
	text-align: center;
	color: #fff;
	font-size: 1em;
	border-bottom: 1px solid #D3DDE8;
	border-bottom: 1px solid rgba(255, 255, 255, .4);
	box-shadow: inset 0 0 80px 0 rgba(255, 255, 255, .3)
}

#expand-checkedbox-content .youtube1 {
	position: relative;
	width: 33.3333%;
	margin: auto;
	padding-bottom: 56.25%;
	padding-bottom: 18.25%;
	text-align: left
}

#expand-checkedbox-content .youtube1 iframe {
	position: absolute;
	width: 100%;
	height: 100%
}

.youtubedisplaynone {
	display: none
}

body {
	background: #aaa;
} */
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




	<section class="section-margin calc-60px">
		<div class="container" style="border: 1px solid #CCCCCC;">
			<div class="section-intro pb-60px">
				<p>Popular Item in the market</p>
				<h2>
					<!-- Trending <span class="section-intro__style">Product</span> -->
					클릭해서 장바구니에 담아주세요
				</h2>
			</div>

			<div id="map"
				style="width: 800px; height: 400px; margin-bottom: 60px;"></div>

			<div class="select-box" id="selectBox" name="selectBox"
				style="float: right; margin: 10px;">
				<select name="date-select">
					<option value="day1" selected="selected">2019-07-22</option>
					<option value="day2">2019-07-23</option>
					<option value="day3">2019-07-24</option>
					<option value="day4">2019-07-25</option>
				</select>
			</div>

			<!-- 	<div class="layer1"> -->
			<div class="row" style="border: 1px solid #BBBBBB; margin: 10px;">
				<!-- [1] -->
				<div class="col-md-2 col-lg-2 col-xl-2 layer1">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img src="/project/asset/img/tourspot/람파라핀_도르샤다리조트.jpg"
								alt="" class="card-img img-rounded">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>

						<div class="card-body">
							<!-- <p>Accessories</p> -->
							<h6 class="card-product__title">람파라핀_도르샤다리조트</h6>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox">
										</label> <label class="toggle--btn" for="toggle--daynight"><span
											class="toggle--feature"></span></label>
									</div>
								</div>
							</div>
							<!-- <p class="card-product__price">$150.00</p> -->
						</div>
					</div>
				</div>

				<!-- [2] -->
				<div class="col-md-2 col-lg-2 col-xl-2 layer1">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img"
								src="/project/asset/img/tourspot/람파라핀_르네상스파타야리조트.jpg"
								alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<!-- <p>Accessories</p> -->
							<h6 class="card-product__title">람파라핀_르네상스파타야리조트</h6>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox">
										</label>
									</div>
								</div>
							</div>
							<!-- <p class="card-product__price">$150.00</p> -->
						</div>
					</div>
				</div>

				<!-- [3] -->
				<div class="col-md-2 col-lg-2 col-xl-2 layer2">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img"
								src="/project/asset/img/tourspot/방콕_mk수끼.jpg" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<!-- <p>Accessories</p> -->
							<h6 class="card-product__title">방콕_mk수끼</h6>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox">
										</label>
									</div>
								</div>
							</div>
							<!-- <p class="card-product__price">$150.00</p> -->
						</div>
					</div>
				</div>

				<!-- [4] -->
				<div class="col-md-2 col-lg-2 col-xl-2 layer2">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img"
								src="/project/asset/img/tourspot/방콕_나이쏘이.jpg" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<!-- <p>Accessories</p> -->
							<h6 class="card-product__title">
								<a href="single-product.html">방콕_나이쏘이</a>
							</h6>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox" >
										</label>
									</div>
								</div>
							</div>
							<!-- <p class="card-product__price">$150.00</p> -->
						</div>
					</div>
				</div>

				<!-- [5] -->
				<div class="col-md-2 col-lg-2 col-xl-2 layer3">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img"
								src="/project/asset/img/tourspot/방콕_라라진다웰니스스파.jpg" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<!-- <p>Accessories</p> -->
							<h6 class="card-product__title">
								<a href="single-product.html">방콕_라라진다웰니스스파</a>
							</h6>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox" >
										</label>
									</div>
								</div>
							</div>
							<!-- <p class="card-product__price">$150.00</p> -->
						</div>
					</div>
				</div>

				<!-- [6] -->
				<div class="col-md-2 col-lg-2 col-xl-2 layer3">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img"
								src="/project/asset/img/tourspot/방콕_사두억수상시장.jpg" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<!-- <p>Accessories</p> -->
							<h6 class="card-product__title">
								<a href="single-product.html">방콕_사두억수상시장</a>
							</h6>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox">
										</label>
									</div>
								</div>
							</div>
							<!-- <p class="card-product__price">$150.00</p> -->
						</div>
					</div>
				</div>

				<!-- [7] -->
				<div class="col-md-2 col-lg-2 col-xl-2 layer4">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img"
								src="/project/asset/img/tourspot/방콕_시암니라밋쇼.jpg" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<!-- <p>Accessories</p> -->
							<h6 class="card-product__title">방콕_시암니라밋쇼</h6>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox">
										</label>
									</div>
								</div>
							</div>
							<!-- <p class="card-product__price">$150.00</p> -->
						</div>
					</div>
				</div>

				<!-- [8] -->
				<div class="col-md-2 col-lg-2 col-xl-2 layer4">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img"
								src="/project/asset/img/tourspot/방콕_아시아티크.jpg" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<!-- <p>Accessories</p> -->
							<h6 class="card-product__title">방콕_아시아티크</h6>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox">
										</label>
									</div>
								</div>
							</div>
							<!-- <p class="card-product__price">$150.00</p> -->
						</div>
					</div>
				</div>
			</div>
			<input type="button" value="next" style=" width:100px; height: 50px; margin-left: 130px; margin-bottom: 30px;" onclick="location.href='/project/member/kds/ex01.do';">
			
		</div>

		<div class="btns long" style="float: right;">
			<input type="button" value="전체 담기" class="btn btn-default" onclick="">
			<input type="button" value="선택 항목 담기" class="btn btn-default"
				onclick="">
		</div>

		<!-- 		</div> -->
	</section>
	<!-- ================ trending product section end ================= -->

	<!-- 	</main> -->
	<div id="basketbtn">
		<i class="ti-arrow-circle-right" /></i>
	</div>
	<div id="basket">

		<div class="tourspot-list-item">
			<div class="col-md-3">
				<table id="tblBasket">
					<tr>
						<p>
						<td colspan="3" span style="color: black">나의 여행 장바구니</td>
						</p>
					</tr>
					<tr>
						<td>가는날</td>
						<td colspan="2">2019-07-22</td>
					</tr>
					<tr>
						<td>오는날</td>
						<td colspan="2">2019-07-25</td>
					</tr>
					<tr>
						<td>여행국가</td>
						<td colspan="2">태국</td>
					</tr>
					<tr>
						<td colspan="3">여행지 선택</td>
					</tr>
					<tr>
						<td>
							<div class="checkbox">
								<input type="checkbox" id="checkbox02"> <label
									for="checkbox02"><div class="tourspot">람파라핀_르네상스파타야리조트</div></label>
							</div>
						</td>
						<td>
							<div class="checkbox">
								<input type="checkbox" id="checkbox02"> <label
									for="checkbox02"><div class="tourspot">방콕_mk수끼</div></label>
							</div>
						</td>
						<td>
							<div class="checkbox">
								<input type="checkbox" id="checkbox03"> <label
									for="checkbox03"><div class="tourspot">방콕_나이쏘이</div></label>
							</div>
						</td>
						<!-- 						<td>
							<div class="checkbox">
								<input type="checkbox" id="checkbox03"> <label
									for="checkbox03"><div class="tourspot">방콕_라라진다웰니스스파</div></label>
							</div>
						</td> -->
					</tr>
				</table>
				
			</div>
			
		</div>



	</div>

	<!--================ Start footer Area  =================-->
	<jsp:include page="/inc/footer.jsp"></jsp:include>
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp"%>
	<!-- 이곳 -->

	<script>
		/* 장바구니 버튼 */

		function openBnr() {
			$(".floating_content.close").css('display', 'none');
			$(".floating_content.open").css('display', 'block');
			var bnrStateCookie = "BnrState=1" + ";domain=.hanatour.com;path=/";
			document.cookie = bnrStateCookie;
		}
		function closeBnr() {
			$(".floating_content.close").css('display', 'block');
			$(".floating_content.open").css('display', 'none');
			var bnrStateCookie = "BnrState=0" + ";domain=.hanatour.com;path=/";
			document.cookie = bnrStateCookie;
		}

		/* 기존 장바구니 버튼 */

		/* 구글지도 */
		var map;
		function initMap() {
			map = new google.maps.Map(document.getElementById('map'), {
				center : {
					lat : -34.397,
					lng : 150.644
				},
				zoom : 8
			});
		}

		/* 지도 마커 표시 */
		var locations = [

		[ '명동', 37.563576, 126.983431 ], [ '가로수길', 37.520300, 127.023008 ],
				[ '광화문', 37.575268, 126.976896 ],
				[ '남산', 37.550925, 126.990945 ],
				[ '이태원', 37.540223, 126.994005 ] ];

		var map = new google.maps.Map(document.getElementById('map'), {

			zoom : 12,
			center : new google.maps.LatLng(37.549012, 126.988546),
			mapTypeId : google.maps.MapTypeId.ROADMAP

		});

		var infowindow = new google.maps.InfoWindow();
		var marker, i;

		for (i = 0; i < locations.length; i++) {

			marker = new google.maps.Marker({

				id : i,
				position : new google.maps.LatLng(locations[i][1],
						locations[i][2]),
				map : map

			});

			google.maps.event.addListener(marker, 'click',
					(function(marker, i) {

						return function() {
							infowindow.setContent(locations[i][0]);
							infowindow.open(map, marker);
						}
					})(marker, i));

			if (marker)

			{

				marker.addListener('click', function() {
					map.setZoom(15);
					map.setCenter(this.getPosition());
				});

			}

		}

		var bt = 0;
		$("#basketbtn").click(function() {
			if (bt == 0) {
				$("#basket").css("display", "none");
				$("#basketbtn i").attr("class", "ti-arrow-circle-left");
				bt = 1;
			} else if (bt == 1) {
				$("#basket").css("display", "inline-block");
				$("#basketbtn i").attr("class", "ti-arrow-circle-right");
				bt = 0;
			}
		});

		//토글키 

		$('#toggle--daynight').on(
				'click',
				function() {
					if ($(this).prop('checked')) {
						$("#expand-checkedbox-content").css("background",
								"#72DFD5");
						$(".youtube1").removeClass("youtubedisplaynone");
					} else {
						$("#expand-checkedbox-content").css("background",
								"transparent");
						$(".youtube1").addClass("youtubedisplaynone");
					}
				});

		//여행지 선택 셀렉트 박스

		$('#selectBox').change(function() {
			var state = $('#selectBox option:selected').val();
			if (state == 'day1') {
				$('.layer1').show();
				$('.layer2').hide();
				$('.layer3').hide();
				$('.layer4').hide();
			} else if (state == 'day2') {
				$('.layer2').show();
				$('.layer1').hide();
				$('.layer3').hide();
				$('.layer4').hide();
			} else if (state == 'day3') {
				$('.layer3').show();
				$('.layer1').hide();
				$('.layer2').hide();
				$('.layer4').hide();
			} else if (state == 'day4') {
				$('.layer4').show();
				$('.layer1').hide();
				$('.layer2').hide();
				$('.layer3').hide();
			}
		});
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwjnP_6WRJ53EJU7Sa9jde-Hk7f_opwpA&callback=initMap"
		async defer></script>
</body>

</html>