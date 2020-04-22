<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Home</title>
<%@ include file="/inc/css.jsp"%>
<style>
#tblList th:nth-child(1) {
	width: 50px;
}

#tblList th:nth-child(2) {
	width: 440px;
}

#tblList th:nth-child(3) {
	width: 140px;
}

#tblList th:nth-child(4) {
	width: 120px;
}

#tblList th:nth-child(5) {
	width: 50px;
}

#tblList td {
	text-align: center;
}

#tblList td:nth-child(2) {
	text-align: left;
	padding-left: 15px;
}

#search {
	width: 800px;
	margin: 15px auto;
	text-align: center;
}

#search select, #search input {
	display: inline-block;
}

#search #word {
	width: 300px;
}

#pagebar {
	text-align: center;
}
</style>
<script>

	$(function() {
		
		$("#selPage").change(function() {
			
			location.href = "/tramapbasket/board.kcm/list.do?page=" + $(this).val();
			
		});
		
	});
	
</script>
</head>
<body>
	<!-- views > board > list.jsp -->
	<div id="main">
		<jsp:include page="/inc/header.jsp"></jsp:include>
		<section id="detail" class="row">

			<!-- 좌측바 -->
			<div class="container col-md-2">
				<div class="section-intro pb-60px">
					<h4>게시판 목록</h4>
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

			<!-- 게시판 -->
			<div class="container col-md-7" style="border: 1px solid #EEEEEE;">
				<div class="section-intro pb-60px">
				
					<div class="row">
						<h3>여행 후기 게시판</h3>
	
						<c:if test="${isSearch}">
							<div
								style="color: tomato; text-align: center; margin-bottom: 15px;">
								검색한 결과가 총 ${totalCount}개 있습니다.</div>
						</c:if>
	
						<div class="btns long">
							<%-- <c:if test="${not empty id}"> --%>
								<input type="button" value="글쓰기" class="btn btn-default"
									onclick="location.href='/tramapbasket/board.kcm/add.do';" style="float: right;">
							<%-- </c:if> --%>
						</div>
					</div>

					<!-- 페이지 이동 도구 -->
					<%-- <div style="-width: 850px; text-align: right; margin-bottom: 10px;">
				<select id="selPage">
					<c:forEach var="i" begin="1" end="${totalPage}" step="1">
					<option value="${i}">${i}페이지</option>
					</c:forEach>
				</select>
			</div>
			<script>
				$("#selPage").val(${nowPage});
			</script>
			
			<input type="range" style="width: 800px; margin: 10px auto;"
				min="1" max="${totalPage}" value="${nowPage}" onchange="location.href='/myhome/board/list.do?page=' + this.value;"> --%>



					<table id="tblList" class="table table-bordered long">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>이름</th>
							<th>날짜</th>
							<th>읽음</th>
						</tr>
						<tr>
							<th>1</th>
							<th>태국 여행 후기 입니다.</th>
							<th>세상의중심</th>
							<th>2019-07-20</th>
							<th>20</th>
						</tr>
						<tr>
							<th>2</th>
							<th>파타야 먹고 왔어요~</th>
							<th>태국킬러</th>
							<th>2019-07-22</th>
							<th>39</th>
						</tr>
						<tr>
							<th>3</th>
							<th>3박 4일 남자 혼여 후기</th>
							<th>방콕에사는사나이</th>
							<th>2019-07-22</th>
							<th>50</th>
						</tr>

<%-- 						<c:if test="${list.size() == 0}">
							<tr>
								<td colspan="5">등록된 게시물이 없습니다.</td>
							</tr>
						</c:if> --%>

						<c:forEach items="${list}" var="dto">
							<tr
								<c:if test="${dto.notice == 1}">style='background-color:#C8EBFA;'</c:if>>
								<td><c:if test="${dto.notice == 0}">
						${dto.seq}
						</c:if> <c:if test="${dto.notice == 1}">
						공지
						</c:if></td>
								<td>
									<!--  
						view.do?seq=10
						view.do?seq=10&isSearch=true&column=content&word=집배원
						
						view.do?seq=10&isSearch=false&column=&word=
						view.do?seq=10&isSearch=true&column=content&word=집배원
						
						http://211.63.89.31:8088/myhome/board/view.do?seq=1&isSearch=true&column=content&word=%EA%B2%8C%EC%8B%9C%ED%8C%90
						--> <!-- 답변글 들여쓰기 --> <%-- 						<c:if test="${dto.depth > 0}">
						<span class="glyphicon glyphicon-share-alt" style="margin-left: ${dto.depth * 30}px; color: cornflowerblue;"></span>
						</c:if> --%> <!-- 제목 --> <a
									href="/tramapbasket/board.kcm/view.do?seq=${dto.seq}">${dto.subject}</a>

									<!-- 첨부파일 표시 --> <c:if test="${not empty dto.filename}">
										<span class="glyphicon glyphicon-floppy-disk"
											style="color: cornflowerblue;"></span>
									</c:if> <!-- 댓글수 --> <c:if test="${dto.commentcount > 0}">
										<span class="badge" style="font-size: 10px;">${dto.commentcount}</span>
									</c:if> <!-- 최신글 --> <c:if test="${dto.gap < 60}">
										<span class="label label-danger" style="font-size: 10px;">new</span>
									</c:if>



								</td>
								<td>${dto.name}(${dto.id})</td>
								<td>${dto.regdate}</td>
								<td>${dto.readcount}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>

			<!-- 검색 창 -->
			<!-- 			<div id="search">
				<form method="GET" action="/tramapbasket/board.kcm/list.do">
					<select name="column" id="column" class="form-control short">
						<option value="subject">제목</option>
						<option value="content">내용</option>
						<option value="name">이름</option>
						<option value="id">아이디</option>
					</select>
					<input type="text" name="word" id="word" class="form-control" required>
					<input type="submit" value="검색하기" class="btn btn-default">
				</form>
			</div> -->
			<!-- search -->
			<%-- 			<c:if test="${isSearch}">
			<script>
				$("#column").val("${column}");
				$("#word").val("${word}");
			</script>
			</c:if> --%>
			<div class="container col-md-2">
				<div class="section-intro pb-60px"></div>
			</div>
			<div id="pagebar">${pagebar}</div>



		</section>
		<jsp:include page="/inc/footer.jsp"></jsp:include>
		<%@ include file="/inc/js.jsp"%>

	</div>
</body>
</html>













<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Home</title>
<%@ include file="/inc/css.jsp"%>
<%@ include file="/inc/js.jsp"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet"
	href="https://talk.op.gg/css/app.css?id=8fb4ea500417bc2c7842">
<style>
#tblList th:nth-child(1) {
	width: 50px;
}

#tblList th:nth-child(2) {
	width: 440px;
}

#tblList th:nth-child(3) {
	width: 140px;
}

#tblList th:nth-child(4) {
	width: 120px;
}

#tblList th:nth-child(5) {
	width: 50px;
}

#tblList td {
	text-align: center;
}

#tblList td:nth-child(2) {
	text-align: left;
	padding-left: 15px;
}

#search {
	width: 800px;
	margin: 15px auto;
	text-align: center;
}

#search select, #search input {
	display: inline-block;
}

#search #word {
	width: 300px;
}

#pagebar {
	text-align: center;
}

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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
	$(function() {

		$("#selPage").change(function() {

			location.href = "/myhome/board/list.do?page=" + $(this).val();

		});

	});

	//모달용 스크립트
	$(function() {
		var dialog, form,

		// From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
		/* emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/, */
		title = $("#title"), contents = $("#contents"), country = $("#country"), tourspot = $("#tourspot"), inputFile = $("#inputFile"), tag = $("#tag"), allFields = $(
				[]).add(title).add(contents).add(country).add(tourspot).add(
				inputFile).add(tag), tips = $(".validateTips");

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
				$("#users section-intro")
						.append(
								"<div class='row'>"
										+ "<div class='pic col-md-4'>"
										+ "<div class='col-md-12'>"
										+ "<div style='width: 280px; height: 150px;'>"
										+ "<img src='/WebContent/asset/img/gallery/r1.jpg'>"
										+ "</div>"
										+ "</div>"
										+ "<ul class='row'>"
										+ "<li class='col-md-4'><div style='width: 80px; height: 80px;'>사진2</div></li>"
										+ "<li class='col-md-4'><div style='width: 80px; height: 80px;'>사진3</div></li>"
										+ "<li class='col-md-4'><div style='width: 80px; height: 80px;'>사진4</div></li>"
										+ "</ul>" + "</div>"
										+ "<div class='content col-md-6'>"
										+ "<h3>"
										+ title.val()
										+ "</h3>"
										+ "<h6>"
										+ contents.val()
										+ "</h6>"
										+ "<span>"
										+ tag.val()
										+ "</span>"
										+ "</div>"
										+ "<div class='member-info col-md-2'>"
										+ "<h6>회원정보</h6>"
										+ "<ul>"
										+ "<div class='row'>"
										+ "<div>사진</div>"
										+ /* 프로필 */
										"<ul>"
										+ "<li>&nbsp;&nbsp;이름</li>"
										+ "<li>&nbsp;&nbsp;아이디</li>"
										+ "</ul>"
										+ "</div>"
										+

										"<li>여행국가 : "
										+ country.val()
										+ "</li>"
										+ "<li>여행지 : "
										+ tourspot.val()
										+ "</li>"
										+ "<li>작성날짜 : 2019-07-30</li>"
										+ "</ul>" + "</div>" + "</div>");
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
</head>
<body>
	<!-- views > board > list.jsp -->
	<div id="main">
		<jsp:include page="/inc/header.jsp"></jsp:include>

		<section class="section-margin calc-60px"
			style="border: 1px solid black;">
			<div class="row">

				<!-- 좌측바 -->
				<div class="container col-md-2" style="border: 1px solid black;">
					<div class="section-intro pb-60px">
						<h3>커뮤니티</h3>
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
							<h3>총 여행 후기 게시판</h3>
							<button id="create-content">글쓰기</button>
						</div>

						<!-- 테이블 형식 게시판으로 우선 생성 -->
						<table id="tblList" class="table table-bordered long">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>이름</th>
								<th>날짜</th>
								<th>읽음</th>
							</tr>

							<c:forEach items="${list}" var="dto">
								<tr
									<c:if test="${dto.notice == 1}">style='background-color:#C8EBFA;'</c:if>>
									<td><c:if test="${dto.notice == 0}">
									${dto.seq}
									</c:if> <c:if test="${dto.notice == 1}">
									공지
									</c:if></td>
									<td>
										<!-- 제목 --> <a
										href="/tramapbasket/board.kcm/view.do?seq=${dto.seq}&isSearch=${isSearch}">${dto.subject}</a>

										<!-- 첨부파일 표시 --> <c:if test="${not empty dto.filename}">
											<span class="glyphicon glyphicon-floppy-disk"
												style="color: cornflowerblue;"></span>
										</c:if> <!-- 댓글수 --> <c:if test="${dto.commentcount > 0}">
											<span class="badge" style="font-size: 10px;">${dto.commentcount}</span>
										</c:if> <!-- 최신글 --> <c:if test="${dto.gap < 60}">
											<span class="label label-danger" style="font-size: 10px;">new</span>
										</c:if>



									</td>
									<td>${dto.name}(${dto.id})</td>
									<td>${dto.regdate}</td>
									<td>${dto.readcount}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>

				<div id="pagebar">${pagebar}</div>

				<div class="btns long">
					<c:if test="${not empty id}">
						<input type="button" value="글쓰기" class="btn btn-default"
							onclick="location.href='/tramapbasket/board.kcm/add.do';">
					</c:if>
				</div>
			</div>

			<!-- 		<section class="article-list">
		
			<div id="content">
				<section class="article-list">
					<article class="article-list-item">
						조회수
						<div class="article-list-item__vote">
							<img src="" alt>
							<div>조회수</div>
						</div>
						컨텐츠
						<div class="article-list-item__content">
							<a href="" class="article-list-itme__info">
								<div class="article-list-item__title">
									<span>제목
									</span>
									<em>[댓글수]</em>
								</div>
							</a>
							<div class="article-list-item-meta">
								<div class="article-list-item-meta">
								자유
								</div>
								<div class="article-list-item-meta">
									<span data-tooltip data-date="2019-07-17T22:55:23+00:00" data-tippy data-original-title="2019년 7월 18일 목요일 오전 7:55">0시간 전</span>								 
								</div>
								<div class="article-list-item-meta__item article-list-item-meta__item--author">
									<span>
										<img class="article-list-item-meta__tier" src="">
									</span>
									<a href="">닉네임</a>
								</div>
							</div>
							<a href="" class="article-list-item__mobile-link"></a>
						</div>
						썸네일
						<div class="article-list-item-thumbnail">
							<a href="" class="article-list-item__mobile-link"></a>
						</div>
					</article>
				</section>
			</div>
             -->






			<!-- 							<section class="article-list-paging">
								<div class="article-list-paging-content">
									<ul class="article-list-paging-list">
										<li
											class="article-list-paging__item article-list-paging__item--next">
											<a href="" class="article-list-paging__button button"> <span>다음</span><img
												src="" width="24" alt="">
										</a>
										</li>
									</ul>
								</div>
							</section>
						</section>
					</div>
				</div> -->

			<!-- 우측바 -->
			<div class="container col-md-2">
				<div class="section-intro pb-60px">
					<!-- 						<p>회원정보</p>
						<h6>회원정보</h6>
						<div class="row">
							<div>
								<div>사진</div>
								<ul>
									<li>&nbsp;&nbsp;이름</li>
									<li>&nbsp;&nbsp;아이디</li>
								</ul>
							</div>
						</div> -->
				</div>
			</div>
	</div>
	</section>


	<jsp:include page="/inc/footer.jsp"></jsp:include>
</body>
</html>











 --%>