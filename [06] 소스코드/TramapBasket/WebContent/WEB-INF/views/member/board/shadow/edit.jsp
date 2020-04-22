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

	
	#tblAdd th { width: 100px; }
	#tblAdd td { width: 650px; }
	#tblAdd #content { height: 300px; }
	
	#hi4 {
		border : 0px solid black;
		text-align: right;
		margin-top : 15px;
		
		width : 1000px;
	
	}
	
</style>
<script>
   $(function(){
	  
      
   });   
      
</script>
</head>
<body>
	<%@ include file = "/inc/mainmenu.jsp" %>
	<div id="boss">
		
		<!-- 왼쪽 메뉴 -->
		<div class="content" id = "firstcontent">
			<nav id = "submenu">
				<ul style="padding-top:50px;">
					<li><a href="/project/board/bookup/list.do">교재추천 게시판</a></li>					
					<li><a href="/project/board/booksel/book.do">서적 검색</a></li>
					<li><a href="/project/board/free/list.do">자유게시판</a></li>
					<li><a href="/project/board/bob/bobhouse.do">맛집 공유</a></li>
					<li><a href="/project/board/shadow/list.do">익명 게시판</a></li>
				</ul>
			</nav>
		</div>
		
		<!-- 글쓰기 -->
		<div class="content" id = "secondcontent">
			<section id= "detail">
			<!--
			<h2 style="align-content: center; padding-left : 750px; margin-top : 50px; margin-bottom: 100px;">자유 게시판</h2>
			-->
			<div style=" width : 300px; padding-left : 620px; margin-top : 30px; margin-bottom: 50px;">			
			<img src="/project/images/익명1.png">
			</div>
			
			<form method="POST" action="/project/board/shadow/editok.do">
			<table id="tblAdd" class="table table-bordered long">
				<tr>
					<th style="text-align: center;">아이디</th>
					<%-- <td>${dto.id}</td> --%>
					<td style="text-align: center;">익명</td>
				</tr>
				<tr>
					<th style="text-align: center;">제목</th>
					<td style="text-align: center;"><input type="text" name="subject" id="subject" class="form-control" required value="${dto.subject}"></td>
				</tr>
				<tr>
					<th style="text-align: center;">내용</th>
					<td><textarea name="content" id="content" class="form-control" required>${dto.content}</textarea></td>
				</tr>				
			</table>
						
			<div id="hi4" class="btns long">
				<input type="submit" value="수정하기" class="btn btn-danger">
				<input type="button" value="돌아가기" class="btn btn-succes"
					onclick="location.href='/project/board/shadow/list.do';">
			</div>
					
						
			<input type="hidden" name="shadowseq" value="${dto.shadowseq}">			
			<input type="hidden" name="isdelete">
			<%-- <input type="hidden" name="id" value="${dto.id}"> --%>						
			</form>
			
		</section>		
		</div>
	</div>
</body>
</html>