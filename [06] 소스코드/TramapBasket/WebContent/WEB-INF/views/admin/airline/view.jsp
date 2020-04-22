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
   
   <!-- views > board > add.jsp -> view.jsp -->
	<div id="main">
		<section id="detail">
			
			<h2>Board</h2>
			
			
				<table id="tblView" class="table table-bordered">
					<tr>
						<th>항공사</th>
						<td><input type="text" name="airline" id="airline"
							class="form-control" required></td>
					</tr>
					<tr>
						<th>날짜</th>
						<td><input type="text" name="date" class="form-control"></td>
					</tr>
					<tr>
						<th>출발시간</th>
						<td><input type="text" name="starttime" id="time"
							class="form-control" required></td>
					</tr>
					<tr>
						<th>도착시간</th>
						<td><input type="text" name="arrivetime" id="time2"
							class="form-control" required></td>
					</tr>
					<tr>
						<th>좌석등급</th>
						<td>
							<select name="seatlv" id="seat" class="form-control short">
								<option value="이코노미">이코노미</option>
								<option value="비즈니스">비즈니스</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>출발공항</th>
						<td><input type="text" name="startairport" id="airport"
							class="form-control" required></td>
					</tr>
					<tr>
						<th>도착공항</th>
						<td><input type="text" name="arriveairport" id="airport2"
							class="form-control" required></td>
					</tr>
					<tr>
						<th>가격</th>
						<td><input type="text" name="price" id="price"
							class="form-control" required></td>
					</tr>
				</table>
				
				
   			<div class="btns long">
				
				<input type="button" value="수정하기" class="btn btn-default"
					onclick="location.href='/project/admin/airline/edit.do?seq=${dto.faketicket_seq}';">
				<input type="button" value="삭제하기" class="btn btn-default"
					onclick="location.href='/project/admin/airline/del.do?seq=${dto.faketicket_seq}';">
					
				<input type="button" value="돌아가기" class="btn btn-default"
					onclick="location.href='/project/admin/airline/view.do?faketicket_seq=${dto.faketicket_seq}';">
			</div>
			
		</section>
	</div>
   		
</body>
</html>