<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>TraMap Basket</title>
	
	<!-- css삽입 -->
<%@ include file="/inc/css.jsp" %>
<style>

</style>
<script>

	$(function() {
		
	});
	
</script>
</head>
<body>
	<!-- views > board > addok.jsp -> editok.jsp -->
	<div id="main">
		
		<section id="detail">
			
			<script>
			<c:if test="${result == 1}">
				location.href = "/project/admin/country/view.do?seq=${dto.country_seq}";
			</c:if>
			
			<c:if test="${result == 0}">
				alert("수정하기 실패;;");
				history.back();
			</c:if>
			</script>
			
		</section>
	</div>
	
</body>
</html>











