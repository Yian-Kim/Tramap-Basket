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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="https://talk.op.gg/css/app.css?id=8fb4ea500417bc2c7842">
<!-- css삽입 -->
<%@ include file="/inc/css.jsp"%>
<style>
.pic, .content, .member-info {
	border: 1px solid black;
}

/* 모달용 */
label, input {
	display: block;
}

input.text {
	margin-bottom: 12px;
	width: 95%;
	padding: .4em;
}

fieldset {
	padding: 0;
	border: 0;
	margin-top: 25px;
}

h1 {
	font-size: 1.2em;
	margin: .6em 0;
}

div#users-contain {
	width: 350px;
	margin: 20px 0;
}

div#users-contain table {
	margin: 1em 0;
	border-collapse: collapse;
	width: 100%;
}

div#users-contain table td, div#users-contain table th {
	border: 1px solid #eee;
	padding: .6em 10px;
	text-align: left;
}

.ui-dialog .ui-state-error {
	padding: .3em;
}

.validateTips {
	border: 1px solid transparent;
	padding: 0.3em;
}
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
	<section class="section-margin calc-60px"
		style="border: 1px solid black;">
		<div class="row">

			<!-- 좌측바 -->
			<div class="container col-md-2" style="border: 1px solid black;">
				<div class="section-intro pb-60px">
					<p>게시판 목록</p>
					<h2>좌측바</h2>
					<ul>
						<li>총 여행 후기 게시판</li>
						<li>동행자 찾기 게시판</li>
						<li>가이드 찾기 게시판</li>
						<li>숙박 후기 게시판</li>
						<li>가이드 후기 게시판</li>
						<li>1:1 문의 게시판 (+ FAQ)</li>
					</ul>
				</div>
			</div>

			<!-- 						<div id="users-contain" class="ui-widget">
						  <h1>Existing Users:</h1>
						  <table id="users" class="ui-widget ui-widget-content">
						    <thead>
						      <tr class="ui-widget-header ">
						        <th>Name</th>
						        <th>Email</th>
						        <th>Password</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr>
						        <td>John Doe</td>
						        <td>john.doe@example.com</td>
						        <td>johndoe1</td>
						      </tr>
						    </tbody>
						  </table>
						</div> -->

			<!-- 모달 시작 -->
			<div id="dialog-form" title="총 여행 후기 글쓰기">
				<p class="validateTips">사진과 함께 여행 후기를 작성해주세요.</p>

				<form>
					<fieldset>
						<div class="form-group">
							<label for="title">제목</label> <input type="text" name="title"
								id="title" class="text ui-widget-content ui-corner-all"
								placeholder="제목을 입력하세요">
						</div>
						<div class="form-group">
							<label for="contents">내용</label>
							<textarea name="contents" id="contents"
								class="text ui-widget-content ui-corner-all form-control"
								rows="3" placeholder="내용을 입력하세요"></textarea>
						</div>
						<div class="form-group">
							<label for="country">여행국가</label> <input type="text"
								name="country" id="country"
								class="text ui-widget-content ui-corner-all"
								placeholder="국가명을 입력하세요">
						</div>
						<div class="form-group">
							<label for="tourspot">여행지</label> <input type="text"
								name="tourspot" id="tourspot"
								class="text ui-widget-content ui-corner-all"
								placeholder="여행지를 ,로 구분하여 입력하세요">
						</div>
						<div class="form-group">
							<label for="inputFile">파일첨부</label> <input type="file"
								name="inputFile" id="inputFile"
								class="text ui-widget-content ui-corner-all">
						</div>
						<div class="form-group">
							<label for="tag">태그</label> <input type="text" name="tag"
								id="tag" class="text ui-widget-content ui-corner-all"
								placeholder="태그를 입력하세요">
						</div>

						<!-- Allow form submission with keyboard without duplicating the dialog button -->
						<input type="submit" tabindex="-1"
							style="position: absolute; top: -1000px">
					</fieldset>
				</form>
			</div>
			<!-- 모달 끝 -->

			<!-- 게시판 -->
			<div class="container col-md-7" style="border: 1px solid black;">
				<div class="section-intro pb-60px">
					<div class="row">
						<p>총 여행 후기 게시판</p>
						<button id="create-content">글쓰기</button>
					</div>
					<div class="row">
						<div class="pic col-md-4">
							<div class="col-md-12">
								<div style="width: 280px; height: 150px;">
									<img src="/WebContent/asset/img/gallery/r1.jpg">
								</div>
							</div>
							<ul class="row">
								<li class="col-md-4"><div
										style="width: 80px; height: 80px;">사진2</div></li>
								<li class="col-md-4"><div
										style="width: 80px; height: 80px;">사진3</div></li>
								<li class="col-md-4"><div
										style="width: 80px; height: 80px;">사진4</div></li>
							</ul>
						</div>


						<div class="content col-md-6">
							<h3>태국여행 후기</h3>
							<h6>태국여행 다녀왔어요</h6>
						</div>
						<div class="member-info col-md-2">
							<h6>회원정보</h6>
							<div class="row">
								<div>사진</div>
								<ul>
									<li>&nbsp;&nbsp;이름</li>
									<li>&nbsp;&nbsp;아이디</li>
								</ul>
							</div>
							<ul>
								<li>여행국가 : 태국</li>
								<li>여행지 : 여행지1, 여행지2, 여행지3, 여행지4</li>
								<li>작성날짜 : 2019-07-30</li>
							</ul>
						</div>
					</div>



                       
		    		<section class="article-list">     
			            <article class="article-list-item ">
			            <div class="article-list-item__vote">
			                <img src="https://talk.op.gg/images/icon-vote-up.png" alt="">
			                <div>232</div>
			            </div>
			            
			            <div class="article-list-item__content">
			                <a href="" class="article-list-item__info">
			                    <div class="article-list-item_title">
			                        <span>이런 치트키는 없슴?</span>
			                        <em>[53]</em>                    
			                    </div>
			                </a>
			                <div class="article-list-item-meta">
			                    <div class="article-list-item-meta__item">자유</div>
			                    	<div class="article-list-item-meta__item">
			                    		<span data-tooltip data-date="2019-07-16T03:07:06+00:00" title="">13 시간 전</span>
			                   		</div>
			                    <div class="article-list-item-meta__item article-list-item-meta__item--author">
			                    	<span data-tooltip title="레벨 40">
			            				<img class="article-list-item-meta__tier" src=""/>
			                        </span>
			                        <a href="">뀨우에엥</a>
			                    </div>
			                </div>
			                <a href="" class="article-list-item__mobile-link"></a>
			                 </div>
			                 <div class="article-list-item-thumbnail">
                    <a href="https://talk.op.gg/s/lol/free/1288502/%EC%A7%91-%EB%83%89%EB%8F%99%EA%B3%A0%EC%97%90-%EC%9D%BC%EC%A3%BC%EC%9D%BC%EA%B0%84-%EB%84%A3%EC%96%B4%EB%91%94-%EB%B9%84%EB%B9%84%EB%B9%85">
                        <img src="https://opgg-com-image.akamaized.net/attach/images/20190716070822.808876_thumb.jpg?image=w_200" class="article-list-item__thumbnail" alt="">
                    </a>
                </div>
			           

			       	   </article>
			       	   
		       		 <section class="article-list-paging">
					    <div class="article-list-paging-content">
					        <ul class="article-list-paging-list">
								<li class="article-list-paging__item article-list-paging__item--next">
		                    		<a href="" class="article-list-paging__button button">
		                        		<span>다음</span><img src="" width="24" alt="">
		                   			</a>
		                		</li>
		                    </ul>
		   				 </div>
					</section>
					</section>            
				</div>
			</div>
			<!-- 우측바 -->
			<div class="container col-md-2" style="border: 1px solid black;">
				<div class="section-intro pb-60px">
					<p>회원정보</p>
					<h6>회원정보</h6>
					<div class="row">
						<div>
							<div>사진</div>
							<ul>
								<li>&nbsp;&nbsp;이름</li>
								<li>&nbsp;&nbsp;아이디</li>
							</ul>
						</div>
					</div>
				</div>
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
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		//모달용 스크립트
		$(function() {
			var dialog, form,

			// From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
			/* emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/, */
			title = $("#title"), contents = $("#contents"), country = $("#country"), tourspot = $("#tourspot"), inputFile = $("#inputFile"), tag = $("#tag"), allFields = $(
					[]).add(title).add(contents).add(country).add(tourspot).add(inputFile).add(tag), tips = $(".validateTips");

			function updateTips(t) {
				tips.text(t).addClass("ui-state-highlight");
				setTimeout(function() {
					tips.removeClass("ui-state-highlight", 1500);
				}, 500);
			}

			function checkLength(o, n, min, max) {
				if (o.val().length > max || o.val().length < min) {
					o.addClass("ui-state-error");
					updateTips("Length of " + n + " must be between " + min
							+ " and " + max + ".");
					return false;
				} else {
					return true;
				}
			}

			function checkRegexp(o, regexp, n) {
				if (!(regexp.test(o.val()))) {
					o.addClass("ui-state-error");
					updateTips(n);
					return false;
				} else {
					return true;
				}
			}

			function addUser() {
				var valid = true;
				allFields.removeClass("ui-state-error");

				/*   valid = valid && checkLength( title, "title", 3, 16 );
				  valid = valid && checkLength( email, "email", 6, 80 );
				  valid = valid && checkLength( password, "password", 5, 16 );
				
				  valid = valid && checkRegexp( name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter." );
				  valid = valid && checkRegexp( email, emailRegex, "eg. ui@jquery.com" );
				  valid = valid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
				 */
				/* 추가되는 부분 */
				if (valid) {
					$("#users section-intro").append(
							"<div class='row'>"+
								"<div class='pic col-md-4'>" +
									"<div class='col-md-12'>" +
										"<div style='width: 280px; height: 150px;'>" +
											"<img src='/WebContent/asset/img/gallery/r1.jpg'>" +
										"</div>" +
									"</div>" + 
									"<ul class='row'>" +
										"<li class='col-md-4'><div style='width: 80px; height: 80px;'>사진2</div></li>" +
										"<li class='col-md-4'><div style='width: 80px; height: 80px;'>사진3</div></li>" +
										"<li class='col-md-4'><div style='width: 80px; height: 80px;'>사진4</div></li>" +
									"</ul>" +
								"</div>" +
								"<div class='content col-md-6'>" +
									"<h3>" + title.val() + "</h3>" +
									"<h6>" + contents.val() + "</h6>" +	
									"<span>" + tag.val() + "</span>" +
								"</div>" +
								"<div class='member-info col-md-2'>" +
									"<h6>회원정보</h6>" +
									"<ul>" +
										"<div class='row'>" +
											"<div>사진</div>" + /* 프로필 */
											"<ul>" +
												"<li>&nbsp;&nbsp;이름</li>" +
												"<li>&nbsp;&nbsp;아이디</li>" +
											"</ul>" +
										"</div>" +
										
										"<li>여행국가 : " + country.val() + "</li>" +
										"<li>여행지 : " + tourspot.val() + "</li>" +						
										"<li>작성날짜 : 2019-07-30</li>" +
									"</ul>" +
								"</div>" +
							"</div>");
					dialog.dialog("close");
				}
				return valid;
			}

			dialog = $("#dialog-form").dialog({
				autoOpen : false,
				height : 800,
				width : 550,
				modal : true,
				buttons : {
					"게시하기" : addUser,
					취소 : function() {
						dialog.dialog("close");
					}
				},
				close : function() {
					form[0].reset();
					allFields.removeClass("ui-state-error");
				}
			});

			form = dialog.find("form").on("submit", function(event) {
				event.preventDefault();
				addUser();
			});

			$("#create-content").button().on("click", function() {
				dialog.dialog("open");
			});
		});
	</script>

</body>
</html>