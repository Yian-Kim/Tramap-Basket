<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
</style>

</head>
<body>
	
	
	<div class="container">
	
		<h1>${loginCheck.name }</h1>
	</div>
	
</body>
<script>
	
		
	<c:if test="${empty loginCheck}">
		alert('로그인 실패');
		history.back();
	</c:if>
	
	<c:if test="${!empty loginCheck}">
		self.close();
		
		<c:if test="${!empty how}">
			opener.location.href='/project/member/ybh/ybhPayment.do';
		</c:if>
		<c:if test="${empty how}">
			opener.location.reload();
		</c:if>
		
	</c:if>

	
</script>
</html>