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


	.container {
		position: relative;
		left: 0;
		top: 0;
	}
	
	#addForm {
		width: 160px;
		position: absolute;
		right: 0px;
		top: 80px;
	}
	
	#addForm label {
		margin-top: 10px;
	}
	
	#addForm #lat, #addForm #lng {
		background-color: white;
	}
	
	#d2 {
		border: 0px solid black;
		margin-top : 40px; 
	}
	#g1{
color : #4285F4;
}
#g2{
color : #E94335;
}
#g3{
/* color : #FBBC05; */
}
#g4{
/* color : #34A853; */
}
	

</style>
<script>
	
	//전역 변수
	var map;
	var m;
	var ctemp;

   $(function(){
	 	//지도를 출력할 컨테이너
		var container = $("#container")[0];
		
		//지도를 표기 설정
		var options = {
				center: new kakao.maps.LatLng(37.499345, 127.033280), //중심점
				level: 3 //확대 레벨
		};
		
		//지도 객체 생성
		map = new kakao.maps.Map(container, options);
		
		
		//마커 등록 + 클릭 이벤트
		kakao.maps.event.addListener(map, "click", function(evt) {
			
			if (m != null) {
				m.setMap(null);
			}
			
			
			m = new kakao.maps.Marker({
				position: evt.latLng
			});
			
			m.setMap(map);
			
			
			//입력 폼 작성
			$("#lat").val(evt.latLng.getLat());
			$("#lng").val(evt.latLng.getLng()); 			
			$("#name").focus();
			$("#content")
			$("#star")
			
			
		});//map.click
		
		
		//초기화 - 등록된 좌표들을 불러서 마커 객체로 출력
		<c:forEach items="${list}" var="dto" varStatus="status">
		
		var c${status.index}; //c0, c1, c2
		var iwContent${status.index};
		var infowindow${status.index};
		
		//마커 등록
		c${status.index} = new kakao.maps.Marker({
			position: new kakao.maps.LatLng(${dto.lat}, ${dto.lng})
		
		});
		
		c${status.index}.setMap(map);	
		
		c${status.index}.name = "${dto.name}";
		c${status.index}.content = "${dto.content}";
		c${status.index}.bobseq = "${dto.bobseq}";
		c${status.index}.star = "${dto.star}";
				
				
		//마커 + 인포윈도우 등록
		iwContent${status.index} = "<div style='padding: 5px;'>${dto.name}</div>";
		infowindow${status.index} = new kakao.maps.InfoWindow({
			content: iwContent${status.index}
		});
		
		
		//짝짓기 - 정적		
		kakao.maps.event.addListener(c${status.index}, "mouseover", function() {
			infowindow${status.index}.open(map, c${status.index});
		});
		
		kakao.maps.event.addListener(c${status.index}, "mouseout", function() {
			infowindow${status.index}.close();
		});
		
		kakao.maps.event.addListener(c${status.index}, "click", function() {
			
			if (m != null) {
				m.setMap(null);
			}
			
			ctemp = this;
			
			
			$("#name").val(this.name);
			$("#content").val(this.content);
			$("#addForm input[type='button']").val("수정하기");
			$("#addForm input[type='button']").attr("onclick", "edit();");
			$("#lat").val(this.getPosition().getLat());
			$("#lng").val(this.getPosition().getLng());
			$("#bobseq").val(this.bobseq);
			$("#star").val(this.star);
			
			
			//삭제버튼 추가하기
			$("#addForm").append("<input type='button' value='삭제하기' class='btn btn-default' onclick='del();'>");
			
		});		
		
		</c:forEach>		
	});//ready
	
	
	
	//추가하기
	function add() {	
		
		$.ajax({
			type: "GET",
			url: "/project/board/bob/bobdata.do",
			data: $("#addForm").serialize(),
			dataType: "json",
			success: function(result) {
				
				if (result.result ==1 ) {
					alert("등록되었습니다.");					
				
				} else if (result.result == 0) {
					alert("등록 실패");					
					
				} else {					
					//등록하는데 사용한 마커를 없애지 말기
					m = null;
					
					//입력 폼 초기화
					$("#name, #content","#lat", "#lng", "#star").val("");
					
				}
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
		});
		
		
		
	}
	
	function edit() {
		
		//데이터 직렬화		
		$.ajax({
			type: "GET",
			url: "/project/board/bob/bobdata.do?mode=edit",
			data: $("#addForm").serialize(),
			dataType: "json",
			success: function(result) {
				
				if(result.result ==1) {
					alert("수정되었습니다.")
					
				}else if (result.result == 0) {
					alert("수정 실패");
				} else {
					
					//등록하는데 사용한 마커를 없애지 말기
					m = null;
					
					//입력 폼 초기화
					$("#name, #content","#lat", "#lng", "#star").val("");
					
				}
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
		});
		
		
		
	}//edit
	

	function del() {
	 	
		
		$.ajax({
			type: "GET",
			url: "/project/board/bob/bobdata.do?mode=del",
			data: $("#addForm").serialize(),
			dataType: "json",
			success: function(result) {
			
				if (result.result == 1) {
					alert("삭제되었습니다.")
				
				}else if (result.result == 0) {
					alert("삭제 실패");
				} else {
					
					//삭제된 마커를 지도상에서 없애기
					if ( ctemp != null) {
					ctemp.setMap(null);
					alert("삭제되었습니다.")
					}
					
					//#addForm 내부를 다시 초기화하는 코드 작성
					$("#name, #content","#lat", "#lng", "#star").val("");
					
					
				}
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
		});
		
		
		
	}	
	
	function sel(lat, lng) {
		map.setLevel(1);
		map.panTo(new kakao.maps.LatLng(lat, lng));
	}  
	
	
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
					<li><a href="/project/board/bob/list.do">맛집 공유</a></li>
					<li><a href="/project/board/shadow/list.do">익명 게시판</a></li>
				</ul>
			</nav>
		</div>
		
		
		<div class="container" id = "secondcontent" style="width: 1200px;">
		
	
		<h1 style="padding-left:420px; font-size:5em; margin-bottom: 40px;"><span id="g1">맛</span><span id="g2">집</span> <span id="g3">공</span><span id="g4">유</span></h1>
		
		<div id="container" style="width: 1000px; height: 500px; border: 1px solid rgb(104, 110, 128); border-radius: 5px; position: relative; overflow: hidden;"></div>
		
		<form id="addForm">
		
			<div id="d2">
			<label> 장소명 : </label>
			<input type="text" name="name" id="name" class="form-control" required autocomplete="off">
			<label> 설명 : </label>
			<input type="text" name="content" id="content" class="form-control" required autocomplete="off">
			<br>
			<br>				
					
			<select  name="star" id="star" data-iconpos="center" style="width : 158px; height : 30px; font-size: 2em;" required>
							<option value="★" style="font-size: 1em;">★</option>
							<option value="★★" style="font-size: 1em;">★★</option>
							<option value="★★★" style="font-size: 1em;">★★★</option>
							<option value="★★★★" style="font-size: 1em;">★★★★</option>
							<option value="★★★★★" style="font-size: 1em;">★★★★★</option>
			</select>
						
			<input type="hidden" name="lat" id="lat" class="form-control" required readonly>
			<input type="hidden" name="lng" id="lng" class="form-control" required readonly>
			
			<hr>
			<input type="button" value="등록하기" class="btn btn-danger" onclick="add();">
			<input type="hidden" name="bobseq" id="bobseq">
			</div>
		</form>
		
		
		<hr>
		
		
		
		
		<h3>맛집</h3>
		
		<c:forEach items="${list}" var="dto">
			<div style="margin-bottom : 5px; ">
			<img src="/project/images/bobpoint.png">
			<div class="item label label-primary" style="margin-right:7px; padding: 5px 10px; cursor: pointer;" onclick="sel(${dto.lat}, ${dto.lng});">장소명 : ${dto.name}</div>
			<div class="item label label-primary" style="margin-right:7px; padding: 5px 10px; cursor: pointer;" onclick="sel(${dto.lat}, ${dto.lng});">설명 : ${dto.content}</div>
			<div class="item label label-danger" style="margin-right:7px; padding: 5px 10px; cursor: pointer;" onclick="sel(${dto.lat}, ${dto.lng});">별점 : ${dto.star}</div>
			</div>
			<br>			
		</c:forEach>
		
	</div>
		
		
			
		</div>
	

</body>
</html>