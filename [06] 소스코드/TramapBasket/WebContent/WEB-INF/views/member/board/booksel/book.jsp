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

#secondcontent{

padding-left:100px;


}

#g1{
color : #4285F4;
}
#g2{
color : #E94335;
}
#g3{
color : #FBBC05;
}
#g4{
color : #34A853;
}

</style>
<script>
   $(function(){
	   
	   $("#btn").click(function() {
			
			$.ajax({
				type: "GET",
				url: "/project/board/booksel/bookdata.do",
				data: "query=" + $("#query").val(),
				dataType: "xml",
				
				success: function(result) {						
					$("#tbl1 tbody").html("");
					var temp = "";
					
					$(result).find("item").each(function (index, item) {
						
						temp += "<tr>";
						
						//변수 생성
						var image = $(item).find("image").text();
						var title = $(item).find("title").text();
						var author = $(item).find("author").text();
						var publisher = $(item).find("publisher").text();
						var pubdate = $(item).find("pubdate").text();
						var price = $(item).find("price").text();
						var discount = $(item).find("discount").text(); 
						var link =$(item).find("link").text();
						
														
						
						temp += "<td><img src='" + image + "'></td>";
						temp += "<td>"+ title + "</td>";
						temp += "<td>"+ author + "</td>";
						temp += "<td>"+ publisher + "</td>";
						temp += "<td>"+ pubdate + "</td>";
						temp += "<td><s>"+ price +  "원</s>" + discount +  "</td>";					
						temp += "<td style=\"cursor:pointer;\" onclick=\"location.href=' " + link + " ';\">"+ link + "</td>";
						
						temp += "</tr>";
						
					});
					
					$("#tbl1 tbody").html(temp);
					
				},
				error: function(a,b,c) {
					console.log(a,b,c);
				}
			});
			
		});
      
   });   
</script>
</head>
<body>
	<%@ include file = "/inc/mainmenu.jsp" %>
	<div id="boss">
		
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
		
		<div class="content" id = "secondcontent" style="width : 1500px;">
		<h1 style="text-align: center; font-size : 5em; margin-bottom: 10px;"><span id="g1">서</span><span id="g2">적</span> <span id="g3">검</span><span id="g4">색</span></h1>		
			
			<div style="text-align: right;">
			<input type="text" name="query" id="query" class="form-control" placeholder="검색어를 입력하세요" style="width: 300px; display: inline-block;">
			<input type="button" name="btn" id="btn" class="btn btn-danger" value="검색하기">
			</div>
		
		<h3 style="text-align: center; font-size : 3em; margin-top:45px;">검색 결과</h3>
		
		<table id="tbl1" class="table table-bordered">
			<thead>
				<tr>
					<th style="text-align: center;">표지</th>
					<th style="text-align: center;">제목</th>
					<th style="text-align: center;">저자</th>
					<th style="text-align: center;">출판사</th>
					<th style="text-align: center;">년도</th>
					<th style="text-align: center;">가격</th>
					<th style="text-align: center;">링크</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>		
			
		</div>
	</div>

</body>
</html>