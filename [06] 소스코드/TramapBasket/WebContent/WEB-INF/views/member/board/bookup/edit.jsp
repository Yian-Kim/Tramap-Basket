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
   
   function deletefile() {
		
		$(event.srcElement).parent().css("text-decoration", "line-through");

		$("input[name=filename]").val("");
		$("input[name=orgfilename]").val("");
		$("input[name=isdelete]").val("${dto.filename}");
	}
	
      
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
					<li><a href="/project/board/bob/list.do">맛집 공유</a></li>
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
			<img src="/project/images/교재추천1.png">
			</div>
			
			
			<form method="POST" action="/project/board/bookup/editok.do" enctype="multipart/form-data">
			<table id="tblAdd" class="table table-bordered long">
				<tr>
					<th style="text-align: center; ">아이디</th>
					<td style="text-align: center;">${dto.id}</td>
				</tr>
				<tr>
					<th style="text-align: center;">제목</th>
					<td style="text-align: center;"><input type="text" name="subject" id="subject" class="form-control" required value="${dto.subject}"></td>
				</tr>
				
				<tr>
					<th style="text-align: center;">글쓴이</th>
					<td style="text-align: center;"><input type="text" name="writer" id="writer" class="form-control" required value="${dto.writer}"></td>
				</tr>	
				<tr>
					<th style="text-align: center;">가격</th>
					<td style="text-align: center;"><input type="text" name="price" id="price" class="form-control" required value="${dto.price}"></td>
				</tr>
				<tr>
					<th style="text-align: center;">내용</th>
					<td><textarea name="content" id="content" class="form-control" required>${dto.content}</textarea></td>
				</tr>
				<tr>
					<th style="text-align: center;">파일</th>
					<td>
											
						<input type="file" name="attach" id="attach" class="form-control">
						
						<c:if test="${not empty dto.filename}">
						<div style="margin-top:10px;">
							첨부파일 : ${dto.orgfilename} 
							<span onclick="deletefile();" style="cursor:pointer; color:red;">[delete]</span>
						</div>
						</c:if>
											
						<c:if test="${empty dto.filename}">
						<div style="margin-top:10px;">첨부파일없음</div>
						</c:if>
					
					</td>
				</tr>		
							
			</table>
						
			<div id="hi4" class="btns long">
				<input type="submit" value="수정하기" class="btn btn-danger">
				<input type="button" value="돌아가기" class="btn btn-succes"
					onclick="location.href='/wmc/board/bookup/list.do';">
			</div>
					
						
			<input type="hidden" name="bookseq" value="${dto.bookseq}">	
			<input type="hidden" name="filename" value="${dto.filename}">
			<input type="hidden" name="orgfilename" value="${dto.orgfilename}">		
			<input type="hidden" name="isdelete">						
			</form>
			
		</section>		
		</div>
	</div>
</body>
</html>