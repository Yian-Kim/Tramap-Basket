<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Home</title>
	
	<!-- css삽입 -->
<%@ include file="/inc/css.jsp" %>
<style>
	.postArea{
		border: 1px solid black;
		padding: 10px;
    	margin: 10px;
	}
	.title{
		text-align: center;
	}
	.title h4{
		display: inline-block;
	}
    .title a{
		position: relative;
		top: -5px;
		color: orangered;
    }
	.content{
		width: 70%;
		margin: auto;
	}
	.grade{
		text-align: right;
		padding-right: 10%;
	}
	.postArea img{
		width:100px;
		height: 100px;
		
	}
	.desc{
		padding-left: 90px;
	}
	.desc div{
		display: inline-block;
	}
	
	.infoText div:nth-child(1) span{
		font-size: 20px;
		font-weight: 600;
	}
</style>
</head>
<body>
  <!--================ Start Header Menu Area =================-->

	<!--================ End Header Menu Area =================-->



  <main class="site-main">
    
 

    
    <!-- ================ Blog section start ================= -->  
    <section class="blog" style="padding-bottom: 50px;">
      <div class="container" style="border: 1px solid black;">
			<!-- 작업공간 -->
		<div>
			<div class="postArea desc">
				<div>
					<img src="/project/pic/guide/${guideInfo.picture }" alt="" />
				</div>
				<div class="infoText">
					<div>
					<span>${guideInfo.name }</span> [${guideInfo.age }세] 
					<c:if test="${guideInfo.gender ==1}">
						<i class='fas fa-mars' style='color: cornflowerblue;'></i>
					</c:if>
					<c:if test="${guideInfo.gender ==2}">
						<i class='fas fa-venus' style='color: tomato;'></i>
					</c:if>
					</div>
					<p>
						${guideInfo.regdate }	
					</p>
				</div>
				<p style='padding: 20px;'>
					${guideInfo.description} 			
				</p>
				
			</div>
			<div>
				<c:forEach items="${grList }" var="dto">
				<div class="postArea">
					<div class='title'>
						
						<h4>${dto.title }</h4>
						

						<c:if test="${dto.member_id eq loginCheck.member_id }">
							<a class='delPost' href="/project/member/ybh/ybhBoardDel.do?guidereview_seq=${dto.guidereview_seq}&guide_id=${guideInfo.guide_id }">
								<i class="fas fa-backspace"></i>
							</a>
						</c:if>
					</div>
					<div class="grade">
						${dto.regdate.substring(0, 10) }
					</div>
					<div class='content'>
						<div>
							${dto.content }				
						</div>
					</div>
					<div class="grade">
						<i class='fas fa-star' style='color: gold'></i> ${dto.grade } 
						[${dto.member_id}]
					</div>
					
				</div>
				
				
				</c:forEach>
				
				<div class="postArea">
					<div class="title">
						
						<h4>친구처럼 편안함</h4>
						

						
					</div>
					<div class="grade">
						2019-07-10
					</div>
					<div class="content">
						<div>
							되게 사글사글하게 잘해주시더라구요 좋았었습니다.		
						</div>
					</div>
					<div class="grade">
						<i class="fas fa-star" style="color: gold"></i> 5 
						[yes24]
					</div>
				</div>
				<div class="postArea">
					<div class="title">
						
						<h4>무난한 가이드</h4>
						

						
					</div>
					<div class="grade">
						2019-07-08
					</div>
					<div class="content">
						<div>
							나쁘지 않았습니다.			
						</div>
					</div>
					<div class="grade">
						<i class="fas fa-star" style="color: gold"></i> 3 
						[umtra33]
					</div>
				</div>
				<div class="postArea">
					<div class="title">
						
						<h4>친절하고 좋아요</h4>
						

						
					</div>
					<div class="grade">
						2019-07-02
					</div>
					<div class="content">
						<div>
							친절하고 좋았습니다 잘 맞춰주는 느낌				
						</div>
					</div>
					<div class="grade">
						<i class="fas fa-star" style="color: gold"></i> 4 
						[fjrvldi]
					</div>
				</div>
				<div class="postArea">
					<div class="title">
						
						<h4>음... 다신 이용 안할거같아요</h4>
						

						
					</div>
					<div class="grade">
						2019-06-28
					</div>
					<div class="content">
						<div>
							별로였습니다 진짜루다가			
						</div>
					</div>
					<div class="grade">
						<i class="fas fa-star" style="color: gold"></i> 2 
						[hunjung]
					</div>
				</div>
				
				
				
			</div>
			
		</div>
      </div>
    </section>
    <!-- ================ Blog section end ================= -->  
	

  </main>


  <!--================ Start footer Area  =================-->	
	
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp" %>
	<!-- 이곳 -->
	
	<script>
	
	   $(".delPost").click(function() {
	      
	      var check = confirm("정말 삭제하시겠습니까?");
	      	
	      if(check) {
	    	  
	      	
	      }else{
	    	  return false;
	      }
	      
	   });		
	
	</script>
</body>

</html>