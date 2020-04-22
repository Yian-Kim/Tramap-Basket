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


</style>
</head>
<body>
	<div id="main">
		<jsp:include page="/inc/header.jsp"></jsp:include>
		<section id="detail">
			
			<script>
			<c:if test="${result == 1}">
				location.href = "/tramapbasket/board.kcm/list.do";
			</c:if>
			
			<c:if test="${result == 0}">
				alert("글쓰기 실패;;");
				history.back();
			</c:if>
			</script>
			
		</section>
	</div>
</body>
</html>