<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shadow</title>
<%@ include file="/inc/asset.jsp" %>
<style>

</style>
<script>

	$(function() {
		
	});
	
</script>
</head>
<body>
	<!-- views > board > addok.jsp -->
	<div id="main">
		<%@ include file = "/inc/mainmenu.jsp" %>
		<section id="detail">
			
			<script>
			<c:if test="${result == 1}">
				location.href = "/project/board/shadow/list.do";
			</c:if>
			
			<c:if test="${result == 0}">
				alert("삭제 실패");
				history.back();
			</c:if>
			</script>
			
		</section>
	</div>
	
</body>
</html>











