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
   
   <div id="main">
		<jsp:include page="/inc/header.jsp"></jsp:include>
		<section id="detail">
			
			<script>
			<c:if test="${result == '1'}">
				location.href = "/myhome/country/countryhome.do";	
			</c:if>
			
			<c:if test="${result == '0'}">
				alert("삭제하기 실패;;");
				history.back();
			</c:if>
			</script>
			
		</section>
	
	</div>
	 
</body>
</html>


