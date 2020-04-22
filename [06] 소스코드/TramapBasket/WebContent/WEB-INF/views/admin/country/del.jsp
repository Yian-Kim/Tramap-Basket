<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file="/inc/css.jsp" %>

<style>
</style>
<script>
	$(function() {
		
	});   
</script>
</head>
<body>
   
   <!-- views > airline > del.jsp -->
	<div id="main">
		<section id="detail">
			
			<div class="message short well">
				정말 삭제하겠습니까?
				<br>
				삭제하면 복구가 불가능합니다.
			</div>
			
			<div class="btns short">
				<input type="button" value="삭제하기" class="btn btn-default" onclick="location.href='/project/country/delok.do?seq=${fk.seq}';">
				<input type="button" value="돌아가기" class="btn btn-default" onclick="location.href='/project/country/view.do?seq=${seq}';">
			</div>
			
		</section>
	
	</div>
   
</body>
</html>