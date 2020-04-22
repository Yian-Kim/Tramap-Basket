<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Insert title here</title>
<%@ include file = "/inc/asset.jsp" %>
<style> 

.img_wrap {
	width:300px;
	margin-top : 50px;
	
}

.img_wrap img {
	max-width : 100%;
}

  
body {
font-family: 'BMJUA';

}

	#tblView th { width: 100px; }
	#tblView td { width: 650px; }
	#tblView #content { height: 300px; }
	
	#tblAddComment { width: 700px; margin-top: 30px; margin-bottom: 15px; }
	#tblAddComment textarea { width: 600px; height: 100px; }
	#tblAddComment input { height: 100px; }
	
	#tblListComment { width: 720px; margin-top: 15px; margin-bottom: 15px; }
	#tblListComment td:nth-child(1) { width: 570px; }
	#tblListComment td:nth-child(2) { 
		width: 150px;
		text-align: center; 
	}
	#tblListComment td:nth-child(2) div:nth-child(2) {
		font-size: 12px;
	}
	
	.pic {
		float: center;		
		width: 0px;
		height: 100px;
		margin: 10px;
		margin-top: -80px;
		margin-bottom: -10px;
		background-repeat: no-repeat;
		background-size: contain;
		background-position: center center;
	}
	
	#tblListComment td > div:nth-child(2) {
		font-size: 20px;
		color: #777;
	}
	
	#tblListComment td > div:nth-child(2):before {
		content: open-quote;
		font-size: 2em;
	}
	
	#tblListComment td > div:nth-child(2):after {
		content: close-quote;
		font-size: 2em;		
	}
	
	#tblListComment td {
		position: relative;
	}
		
	#tblListComment td > div:nth-child(3) {
		position: absolute;
		bottom: 5px;
		right: 10px;
		color: #999;
	}
	
	#tblListComment td > div:nth-child(3) > span {
		display: none;
		cursor: pointer;
		color: tomato;
	}
	
	#tblListComment td:hover > div:nth-child(3) > span {
		display: inline;
	}
	
	
	#hi {
		border : 0px solid black;
		width : 1430px;
		text-align: right;
		margin-top : 15px;
	
	}

</style>
<script> 

$(function(){

   	$("#love").click (function() {
   				
   			
	   		$.ajax({
	   				
	   			type: "GET",
	   			url : "/project/board/bookup/lovecnt123.do",
	   			data : "bookseq=${dto.bookseq}&islove=${islove}",
	   			
	   			success : function (result) {
	   				
					$("#lovecnt").text(result.love);
	   				
				},
				
				error : function (a,b,c) {
					alert(a + b + c);
				}
	   			
	   		});
   		
	});
	  
    
}); 

   
   
   	//댓글 수정
   	function edit(span, bcseq) {
   		
   		var content = $(span).parent().prev().text();
   		//alert(content);
   		$("#tblAddComment textarea").val(content);
   		
   		$("#tblAddComment input[type=submit]").val("댓글 수정");
   		
   		$("#tblAddComment textarea").focus();
   		
   		
   		$("#cform").attr("action", "/project/board/bookup/editcomment.do");
   		$("#cform input[name=bcseq]").val(bcseq);
   		
   	}
   	
   	
   	
   	//댓글 삭제
   	function del(bcseq) {
   		if (confirm("댓글을 삭제하겠습니까?")) {
   			location.href = "/project/board/bookup/delcomment.do?bookseq=${dto.bookseq}&bcseq=" + bcseq;
   		}	
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
			<img src="/project/images/교재추천1.png">
			</div>
			
			<table id="tblView" class="table table-bordered long">
				<tr>
					<th style="text-align: center;">번호</th>
					<td >${dto.bookseq}</td>
				</tr>
				<tr>
					<th style="text-align: center;">아이디</th>
					<td style="text-align: center;">${dto.id}</td>
				</tr>
				<tr>
					<th style="text-align: center;">제목</th>
					<td style="text-align: center;">${dto.subject}</td>
				</tr>
				<tr>
					<th style="text-align: center;">글쓴이</th>
					<td style="text-align: center;">${dto.subject}</td>
				</tr>
				<tr>
					<th style="text-align: center;">가격</th>
					<td style="text-align: center;">${dto.subject}</td>
				</tr>								
				<tr>
					<th style="text-align: center;">내용</th>
					<td id="content">${dto.content}
					
					</td>
				</tr>								
				<tr>
					<th style="text-align: center;">날짜</th>
					<td style="text-align: center;">${dto.regdate}</td>
				</tr>
				<tr>
					<th style="text-align: center;">조회수</th>
					<td style="text-align: center;">${dto.cnt}회</td>
				</tr>	
				<tr>
					<th style="text-align: center;">파일</th>
					<td>
					
					<c:if test="${not empty dto.filename}">
					<a href="/project/board/bookup/download.do?filename=${dto.filename}&orgfilename=${dto.orgfilename}&bookseq=${dto.bookseq}">${dto.orgfilename}</a> (downloads : ${dto.downloadcount})
					</c:if>
					
					<c:if test="${empty dto.filename}">
					첨부 파일 없음
					</c:if>
					
					</td>
				</tr>											
				<tr>
					<th style="text-align: center;">좋아요</th>
					<td><input type="button" name="love" id="love" class="btn btn-danger" style="background-image:url('/wmc/images/하트7777.png'); margin-right:10px" required><span id="lovecnt">${dto.love}</span>개</td>
				</tr>			
			</table>
			
					
			
			<!-- 수정, 삭제, 돌아가기 -->
			<div id="hi" class="btns long">								
				
				<%-- <c:if test="${(not empty id && id == dto.id) || lv == 2}">  --%>
				
				<input type="button" value="수정하기" class="btn btn-success"
					onclick="location.href='/project/board/bookup/edit.do?bookseq=${dto.bookseq}';">
				<input type="button" value="삭제하기" class="btn btn-danger"
					onclick="location.href='/project/board/bookup/del.do?bookseq=${dto.bookseq}';">
					
				<%--  </c:if>	 --%>		
									
				<input type="button" value="돌아가기" class="btn btn-succes"
					onclick="location.href='/project/board/bookup/list.do?column=${column}&word=${word}';">
			</div>
						
						
			<!-- 댓글 -->
			<form id="cform" method="POST" action="/project/board/bookup/addcomment.do">
				<table id="tblAddComment" class="table table-bordered table-striped" style=" margin-left:500px;">
					<tr>
						<td>
							<textarea name="content" class="form-control" required></textarea>
						</td>
						<td>
							<input type="submit" value="댓글 쓰기" class="btn btn-default">
						</td>
					</tr>
				</table>
				
			<!-- 부모글번호 -->				
			<input type="hidden" name="bookseq" value="${dto.bookseq}">
				
			<!-- 수정 or 삭제 댓글번호 -->
			<input type="hidden" name="bcseq">
			</form>
			
			<!-- 댓글 불러오기 -->
			<table id="tblListComment" class="table table-bordered table-striped" style=" margin-left:500px;">
				<c:forEach items="${clist}" var="cdto">
				<tr>
					<td>
						<div class="pic"></div>
						<div>${cdto.content}</div>
						<div>							
							<%-- <c:if test="${(not empty id && id == cdto.id) || lv == 2}">		 --%>						
								<span onclick="edit(this, ${cdto.bcseq});"><button class="btn btn-danger">[edit]</button></span>
								<span onclick="del(${cdto.bcseq})">[delete]</span> 
						<%-- 	</c:if>	 --%>												
							${cdto.regdate} ${cdto.id}
						</div>
					</td>
				</tr>
				</c:forEach>				
			</table>
		</section>		
		</div>
	</div>
</body>
</html>