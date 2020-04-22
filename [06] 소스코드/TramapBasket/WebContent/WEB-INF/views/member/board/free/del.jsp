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

	.message.short {
		margin-top: 150px;
	}
	
	#hi2 {
		border : 0px solid black;
		text-align: center;
		width : 600px;
		margin-left: 350px;	
		
		color : red;		
	}
	
	#hi3 {
	border : 0px solid black;
	text-align: right;
	width : 730px;
	
	}
	
	

</style>
<script>
   $(function(){
	  
      
   });   
</script>
</head>
<body>

	<div id="boss">
		
		<!-- 왼쪽 메뉴 -->
		
		
		<!-- 글쓰기 -->
		<div class="content" id = "secondcontent">
			<section id= "detail">
			
			<div id="hi2"class="message short well">
				삭제하면 복구가 불가능합니다.
				<br>
				정말 삭제하겠습니까?
			</div>
			
			<div id="hi3" class="btns short">
			
				<input type="button" value="삭제하기" class="btn btn-danger"
					onclick="location.href='/project/member/board/free/delok.do?freeSeq=${freeSeq}';">
				<input type="button" value="돌아가기" class="btn btn-default"
					onclick="location.href='/project/member/board/free/view.do?freeSeq=${freeSeq}';">
			</div>			
			
		</section>		
		</div>
	</div>
</body>
</html>