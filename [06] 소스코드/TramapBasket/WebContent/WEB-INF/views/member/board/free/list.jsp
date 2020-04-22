<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "/inc/asset.jsp" %>
<style>   
body {
font-family: 'BMJUA';

}

	#tblList th:nth-child(1) { width: 50px; }
	#tblList th:nth-child(2) { width: 440px; }
	#tblList th:nth-child(3) { width: 140px; }
	#tblList th:nth-child(4) { width: 120px; }
	#tblList th:nth-child(5) { width: 50px; }
	
	#tblList td { text-align: center; }
	#tblList td:nth-child(2) { text-align: left; padding-left: 15px; }
	
	#search {
		width: 800px;
		margin: 15px auto;
		text-align: center;
	}
	
	#search select, #search input { display: inline-block; }
	#search #word { width: 300px; }
	
	#pagebar { text-align: center; }
	
	#column {
		width : 100px;
		align-content: center;
		padding-right: 10px;
		margin-right: 5px;
	}
	
	#dao {	
	border : 0px solid white;
	width: 1200px;
	margin:0 auto;
	text-align: right;	
	}

</style>
<script>
   $(function(){
	   
	   $("#selPage").change(function() {
			
			location.href = "/project/member/board/free/list.do?page=" + $(this).val();
			
		});
      
   });   
</script>
</head>
<body>
	
	
	<%-- <%@ include file = "/inc/mainmenu.jsp" %> --%>
	<div id="boss">
		
		<!-- 왼쪽 메뉴 -->
		<!-- <div class="content" id = "firstcontent">
			<nav id = "submenu">
				<ul style="padding-top:50px;">
					<li><a href="/project/board/bookup/list.do">교재추천 게시판</a></li>
					<li><a href="/project/board/booksel/book.do">서적 검색</a></li>
					<li><a href="/project/board/free/list.do">자유게시판</a></li>
					<li><a href="/project/board/bob/bobhouse.do">맛집 공유</a></li>
					<li><a href="/project/board/shadow/list.do">익명 게시판</a></li>
			    </ul>
			</nav>
		</div> -->
		
		<!-- 게시판 -->
		<div class="content" id = "secondcontent">
			<section id = "detail">		
				
			<!--
			<h2 style="align-content: center; padding-left : 750px; margin-top : 50px; margin-bottom: 100px;">자유 게시판</h2>
			-->
			<div style=" width : 300px; padding-left : 620px; margin-top : 30px; margin-bottom: 50px;">
			<!-- <img src="/project/images/자유게시판1.png"> -->
			
			
			<center><img src="/project/images/숙소후기.jpg"></center>
			</div>			
			
			<!-- 검색 결과 -->
			<c:if test="${isSearch}">
			<div style="color: tomato; text-align: center; margin-bottom: 15px;">
				검색한 결과가 총 ${totalCount}개 있습니다.
			</div>
			</c:if>
			
			<!-- 게시판 -->
			<table id="tblList" class="table table-striped table-bordered table-hover long">
				<tr style="background-color:#5CD1E5 ">
					<th style="text-align: center; color:white; font-size: 1.2em;">번호</th>
					<th style="text-align: center; color:white; font-size: 1.2em;">제목</th>
					<th style="text-align: center; color:white; font-size: 1.2em;">아이디</th>
					<th style="text-align: center; color:white; font-size: 1.2em;">날짜</th>
					<th style="text-align: center; color:white; font-size: 1.2em;">조회수</th>
				</tr>
			
				<!-- 게시물이 없을경우 -->
				<c:if test="${list.size()==0}">
				<tr>
					<td colspan="5">등록된 게시물이 없습니다.</td>
				</tr>				
				</c:if>
			
				<!-- 공지사항 -->
				<c:forEach items="${list}" var="dto">
				<tr <c:if test="${dto.notice == 1}">style='background-color:#C8EBFA;'</c:if>>
					<td>
						<c:if test="${dto.notice == 0}">
						${dto.freeSeq}
						</c:if>
						<c:if test="${dto.notice == 1}">
						공지
						</c:if>
					</td>										
					<td >					
					<!-- 제목 -->
					<a href="/project/member/board/free/view.do?freeSeq=${dto.freeSeq}&isSearch=${isSearch}&column=${column}&word=${word}">${dto.subject}</a>
					<!-- 첨부파일 -->
					<c:if test = "${not empty dto.filename}">
<span class = "glyphicon glyphicon-floppy-disk" style="color:cornflowerblue;"></span>
</c:if>
					<!-- 댓글수 -->
					<c:if test="${dto.commentcount > 0}">
						<span class="badge" style="font-size: 10px;">${dto.commentcount}</span>
					</c:if>
					
					<!-- 최신글 -->
					<c:if test="${dto.gap < 60}">
						<span class="label label-danger" style="font-size: 10px;">new</span>
					</c:if>
					
					</td>
					
					<td>${dto.id}</td>
					<td>${dto.regdate}</td>
					<td>${dto.cnt}</td>
				</tr>						
				</c:forEach>
			</table>
			
			<!-- 검색 창 -->
			<div id="search">
				<form method="GET" action="/project/member/board/free/list.do">
					<select name="column" id="column" class="form-control short">
						<option value="subject">제목</option>
						<option value="content">내용</option>						
						<option value="id">아이디</option>
					</select>
					<input type="text" name="word" id="word" class="form-control" required>
					<input type="submit" value="검색하기" class="btn btn-succes">
				</form>
			</div>
			
			<!-- search -->
			<c:if test="${isSearch}">
			<script>
				$("#column").val("${column}");
				$("#word").val("${word}");
			</script>
			</c:if>
			
			<!-- 페이지바 -->
			<div id="pagebar">
				${pagebar}
			</div>
			
			
			
			<div id="dao" class="btns long">
				<%--  <c:if test="${not empty id}">  --%>
				<input type="button" value="글쓰기" class="btn btn-danger" onclick="location.href='/project/member/board/free/add.do';">
				<%-- </c:if> --%>
			</div>
			
			
		</section>		
		</div>
	</div>
</body>
</html>