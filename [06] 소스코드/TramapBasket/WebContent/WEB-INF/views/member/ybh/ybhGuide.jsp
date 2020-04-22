<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>TramapBasket - Guide</title>
	
	<!-- css삽입 -->
<%@ include file="/inc/css.jsp" %>
<style>
	#basketbtn{
		position:fixed; display:inline-block; right:1%; /* 창에서 오른쪽 길이 */ top:15%; /* 창에서 위에서 부터의 높이 */ background-color: transparent; margin:0; 
		display: inline-block;
		
	}
	#basketbtn i{
		font-size: 30px;
	}
	
	#basket { 
		position:fixed; width:15%; display:inline-block; right:1%; /* 창에서 오른쪽 길이 */ top:20%; /* 창에서 위에서 부터의 높이 */ background-color: transparent; margin:0; 
		border: 2px solid #bbb;
		border-radius: 5px;	
		height: 600px;
		overflow-y: auto;
		text-align: center;
		background-color: white;
	}
	
	#basket ul{
		margin: 10px;
	}
	
	#basket ul table{
		border: 2px solid #ccc;
		border-radius: 5px;	
		width: 100%;
		margin: 5px auto;	
	}
	#basket ul table td{
		border: 2px solid #ccc;
		border-radius: 5px;	
		
	}
	
	.tbl3 td{
		width: 33%;
	}
    
    #guideArea{
    	border: 2px solid #ccc;
		border-radius: 5px;	
    	margin-top: 20px;
    	margin-bottom: 20px;
    }
    #guideArea h4 {
		outline: border: 2px solid #aaa;
		border-radius: 5px;	;
		text-align: center;
		padding: 20px;
	}
	
	#titleDay{
		text-align: center;
		margin: 15px;
	}
	
	
	#guideList{
		margin: 20px;
	}
	
	#selSort{
		text-align: right;
		padding: 10px;
	}
	#selSort span{
		padding: 0px 10px;
	}
	
	
	#scheduleDay{
		margin-bottom: 50px;
	}
	#roomDay, #guideDay{
		width: 49.8%;
		display: inline-block;
	}
	
	.guideImg{
		cursor: pointer;
	}
	
	#selBox{
		padding-left: 10px;
	}

	.blog-pagination{
		padding-top: 0px;
    	padding-bottom: 20px;
	}
	
	.checkG{
		position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    background-color: gray;
	    opacity: 0;
	    
	}
	
	.checkGi{
		position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    display: block;
	    font-size: 5em;
	    color: antiquewhite;
	    padding-top: 25%;
	    opacity: 0;
	    
	}
	
	input[type=radio] {
		display: none;
	}
	
	.tbl4 td{
		max-width: 100px;
	}
	.tbl4 td i{
		text-align: left;
	}
	
	.sortBtn{
		cursor: pointer;
	}
	.sortBtn:hover {
		color: tomato;
	}
	
	.gA{ border: 2px solid #ccc;
		border-radius: 5px;	}
	
	
</style>
</head>
<body>
  <!--================ Start Header Menu Area =================-->
	<header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand logo_h" href="index.html"><img src="/project/asset/img/logo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Shop</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
                  <li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
                  <li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
                  <li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
                </ul>
							</li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Blog</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
                </ul>
							</li>
							<li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Pages</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
                  <li class="nav-item"><a class="nav-link" href="register.html">Register</a></li>
                  <li class="nav-item"><a class="nav-link" href="tracking-order.html">Tracking</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
            </ul>

            <ul class="nav-shop">
            <c:if test="${!empty loginCheck }">
              <li class="nav-item"><button onclick="location.href='/project/member/ybh/ybhMypage.do';"><i class="ti-search"></i></button></li>
              <li class="nav-item"><button><i class="ti-settings"></i></button> </li>
              <li class="nav-item"><a class="button button-header" href="/project/member/ybh/ybhLogout.do">Logout</a></li>
            </c:if>
            <c:if test="${empty loginCheck }">
              <li class="nav-item"><a class="button button-header" href="/project/member/ybh/ybhLogin.do"
              	onclick="window.open(this.href, '_blank', 'width=400,height=300,toolbars=no,scrollbars=no,left=700, top=50'); return false;">Login</a></li>
              	
            </c:if>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
	<!--================ End Header Menu Area =================-->



  <main class="site-main">
    
 	<div id="basketbtn"><i class="ti-arrow-circle-right"/></i></div>
    <div id="basket">
    	<ul>
    		<li>
    			<table>
    				<tr>
    					<td>출발일</td>
    					<td>${start.startday }</td>
    				</tr>
    				<tr>
    					<td>도착일</td>
    					<td>${start.arriveday }</td>
    				</tr>
    				<tr>
    					<td>인원수</td>
    					<td>${start.people }명</td>
    				</tr>
    			</table>
    		</li>
    		<li>
    			<table>
    				<tr>
    					<td>${country.name }</td>
    				</tr>
    			</table>
    		</li>
    		<li>
   				<table class="tbl3">
   					<tr>
   						<td>출발</td>
   						<td>→</td>
   						<td>도착</td>
   					</tr>
   					<tr>
   						<td>${sTicket.startAirportName }</td>
   						<td>${sTicket.waypointAirportName }</td>
   						<td>${sTicket.arriveAirportName }</td>
   					</tr>
   					<tr>
   						<td>${sTicket.flightClassName }</td>
   						<td colspan="2">${sTicket.airlineName }</td>
   					</tr>
   					<%-- <tr>
   						<td colspan="3">${sTicket.price }원</td>
   					</tr> --%>
   				</table>
   				<table class="tbl3">
   					<tr>
   						<td>출발</td>
   						<td>→</td>
   						<td>도착</td>
   					</tr>
   					<tr>
   						<td>${aTicket.startAirportName }</td>
   						<td>${aTicket.waypointAirportName }</td>
   						<td>${aTicket.arriveAirportName }</td>
   					</tr>
   					<tr>
   						<td>${aTicket.flightClassName }</td>
   						<td colspan="2">${aTicket.airlineName }</td>
   					</tr>
   					<%-- <tr>
   						<td colspan="3">${aTicket.price }원</td>
   					</tr> --%>
   				</table>

    		</li>
    		<li>
    			<table class="tbl4">
    				<c:forEach items="${tList }" var="tdtoList" varStatus="status">
	    				<tr>
	    					<td rowspan="${tdtoList.size()+2}">${status.index+1 }</td>
	    					<td>${tdtoList.get(0).name }</td>
	    				</tr>
    					<c:forEach items="${tdtoList }" var="tdto" varStatus="statusIn">
    						<c:if test="${statusIn.index >0}">
    						<tr>
    							<td>${tdto.name }</td>
    						</tr>
    						</c:if>
    					</c:forEach>
	    				<tr>
	    					<td><i class="fas fa-home"></i>
	    					<c:if test="${empty rList.get(status.index).hotelName}">숙소없음</c:if>  
	    					<c:if test="${!empty rList.get(status.index).hotelName}">${rList.get(status.index).hotelName}</c:if>  
	    					</td>
	    				</tr>
	    				<tr>
	    					<td id="basGuide${status.index }"><i class="fas fa-walking"></i>가이드없음</td>
	    				</tr>
    				</c:forEach>
					
    			</table>
    		</li>
    	</ul>
		
    </div>

    
  
    <!-- ================ Blog section start ================= -->  
    <section class="blog" style="padding-bottom: 50px;">
      <div class="container" style="border: 2px solid #ccc;
		border-radius: 5px;	">

			<!-- 실현 공간 -->
			<div id="guideArea"><!-- 가이드공간 -->
				<h4>가이드</h4>
				<div id="selBox">
					<select name="selDay" id="selDay">
						<c:forEach items="${tList }" var="dto" varStatus="status">
							<option value="${status.index +1}">${status.index +1}일차</option>
						</c:forEach>
					</select>
				</div>
				<div id="selSort"><span class="sortBtn">평점순</span><span class="sortBtn">별점순</span></div>
				<div id="guideList" class="row"><!-- 가이드들 -->
					
				</div>
				
				<!-- 페이징 -->
	            <nav class="blog-pagination justify-content-center d-flex">
	                <ul class="pagination">
	                    <li class="page-item">
	                        <a href="#" class="page-link" aria-label="Previous">
	                            <span aria-hidden="true">
	                                <i class="ti-angle-left"/></i>
	                            </span>
	                        </a>
	                    </li>
	                    <li class="page-item active">
	                        <a href="#" class="page-link">01</a>
	                    </li>
	                    <li class="page-item">
	                        <a href="#" class="page-link">02</a>
	                    </li>
	                    <li class="page-item">
	                        <a href="#" class="page-link">03</a>
	                    </li>
	                    <li class="page-item">
	                        <a href="#" class="page-link">04</a>
	                    </li>
	                    <li class="page-item">
	                        <a href="#" class="page-link">05</a>
	                    </li>
	                    <li class="page-item">
	                        <a href="#" class="page-link" aria-label="Next">
	                            <span aria-hidden="true">
	                                <i class="ti-angle-right"/></i>
	                            </span>
	                        </a>
	                    </li>
	                </ul>
	            </nav>

			</div>
		
			<h4 id="titleDay">1 일차</h4>
			
			<table id="touristSpotDay" class="table table-bordered">
				<tr>
					
				</tr>
			</table>
			<div id="scheduleDay">
				<div id="roomDay">
					
				</div>
				<div id="guideDay">
					
				</div>
			</div>

			
 		<div style="text-align: center; margin: 20px;">
 			<button id="next" class="button button-subscribe mr-auto mb-1" type="button">다음단계</button>
   		</div>
   		
   		<div style="text-align: right; padding: 10px;">
			<button id="btnBack" style="padding: 5px 10px;" class="button button-subscribe mr-auto mb-1" type="button"
			 onclick="history.back();"><i class="fas fa-undo-alt"></i></button>
		</div>
		
      </div>
      
      
     
    </section>
    <!-- ================ Blog section end ================= -->  
		

  </main>



  <!--================ Start footer Area  =================-->	
	<footer class="footer">
		<div class="footer-area">
			<div class="container">
				
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				
			</div>
		</div>
	</footer>
	
	<!--================ End footer Area  =================-->
	<%@ include file="/inc/js.jsp" %>
	<!-- 이곳 -->
	
	
	<script>
		var guideSave = [];//선택한 가이드아이디를 저장하는 배열
		//ㄴ "" || undefined 를조건으로걸면됨
		for(var i=0; i<${tList.size()}; i++){
			guideSave[i] = "";
			//alert(i);
		}
		//alert(guideSave.length);
		//ㄴ ""을 넣어줘야 길이가 여행날짜로 고정됨!!
		
		
		var guideSaveHtml = [];
		//ㄴ 태그저장용
		
		
		
		var bt = 0;
		//장바구니
		$("#basketbtn").click(function(){
			if(bt==0){
				$("#basket").css("display","none");
				$("#basketbtn i").attr("class", "ti-arrow-circle-left");
				bt = 1;
			}else if(bt==1){
				$("#basket").css("display","inline-block");
				$("#basketbtn i").attr("class", "ti-arrow-circle-right");
				bt = 0;
			}
		});
		
		
		
		
		//셀렉트박스에 맞춰 움직여
		$("#selDay").change(function(){

			$("#titleDay").text($("#selDay").val()+" 일차");
			
			$("#touristSpotDay tr").html(""); //초기화
			$("#roomDay").html("");
			$("#guideDay").html("");//초기화
			
			var temp = [];
			var room = [];
			//여행이 2일일지 30일이될지,
			//그리고 그 1일의 관광지가 3개일지 5개일지 모르기때문에
			//배열로 선언후 다만들어버림
			<c:forEach items="${tList}" var="tsTemp" varStatus="status">
			temp[${status.index}]="";
			
				<c:forEach items="${tsTemp}" var="tdto">
				
				
				temp[${status.index}] = temp[${status.index}] + 
					"<td>"
						+"<div><img style='width:70px;' src='/project/pic/tourist/${tdto.picture}'/></div>"
						+"<div>${tdto.name}</div>"
					+"</td>";
					
				</c:forEach>
				
				
				<c:if test="${rList.get(status.index)!= null}">
					room[${status.index}]= 
						"<table class='table table-bordered'>"
						+"<tr>"
							+"<td><img style='width:70px; height:70px;' src='/project/pic/hotel/${rList.get(status.index).hotelPicture}'/></td>"
							
							+"<td>${rList.get(status.index).priceComma}원</td>"
						+"</tr>"
						+"<tr>"
							+"<td>${rList.get(status.index).hotelName}</td>"
							+"<td>${rList.get(status.index).roomClassName} (${rList.get(status.index).personCount})</td>"
						+"</tr>"
						+"</table>";
				</c:if>
				<c:if test="${rList.get(status.index)== null}">
					room[${status.index}]= "<table class='table table-bordered' style='text-align: center;'><tr><td>선택된 숙소가 없습니다.</td></tr><td>선택사항</td></tr></table>";
					
				</c:if>
				
			</c:forEach>
			
			//선택한 셀렉트 value에 맞는날이 추가되게함
			
			
			$("#touristSpotDay tr").append(temp[$("#selDay").val()-1]);
			$("#roomDay").append(room[$("#selDay").val()-1]);
			
			
			//전에 선택했던 가이드 테이블에 표시
			
			if((guideSave[($("#selDay").val()-1)] != "") && (guideSave[($("#selDay").val()-1)] != undefined)){//배열검색
				$("#guideDay").append(guideSaveHtml[($("#selDay").val()-1)]);//태그추가
				//ㄴ 정보가남아있으면 그정보로
				/* console.log('if');
				console.log(guideSave[0]);
				console.log(guideSave[1]);
				console.log(guideSave[2]);
				console.log(guideSave[3]); */
			}else{
				$("#guideDay").append("<table class='table table-bordered' style='text-align: center;'><tr><td>선택된 가이드가 없습니다.</td></tr><td>선택사항</td></tr></table>");//태그추가
				//ㄴ 없으면 가이드 없음
				/* console.log('else');
				console.log(guideSave[0]);
				console.log(guideSave[1]);
				console.log(guideSave[2]);
				console.log(guideSave[3]); */
			}
			
			
			$.ajax({
				type: "GET",
				url: "/project/member/ybh/ybhGuide.do",
				data: "d="+($("#selDay").val()-1), 
					//d값은 셀렉트값이기도하면서 기존 페이지와의 차이를준다.
				dataType: "json",
				success: function(result){
					//result: JSON형태로 수신(JavaScript Simple Object Notation) - 자바 스크립트 객체 표기법!!
					$("#guideList").html("");//초기화
					//json으로 JavaScript객체 형태로 보냈기때문에 result.qustion으로 호출가능
					//result["qustion"] 이렇게 해도됨.
					var guideC ="";
					
					
					
					for(var i=0; i<result.length; i++){
						$(this).find('div').css('opacity','0.5');
						$(this).find('i').css('opacity','1');
						$(this).find('input[type=radio]').prop('checked', true);
						//처음만들때 이기능을 넣어줘야함
					guideC += 
				          "<div class='col-md-6 col-lg-4 col-xl-2 gA'>"
					       +"<div class='card text-center card-product'>"
					         +"<div class='card-product__img guideImg'>"
					           +"<img class='card-img' src='/project/pic/guide/"+result[i].picture+"'>";
					           if(result[i].guide_id == guideSave[($("#selDay").val()-1)]){//체크된상태로나오게
						           guideC+= "<div class='checkG' style='opacity: 0.5;'></div>"
						           +"<i class='far fa-check-circle checkGi' style='opacity: 1;'></i>"
						           +"<input type='radio' name='guide"+($("#selDay").val()-1)+"' value='"+result[i].guide_id+"' checked/>";
					           }else{
						           guideC+= "<div class='checkG'></div>"
						           +"<i class='far fa-check-circle checkGi'></i>"
						           +"<input type='radio' name='guide"+($("#selDay").val()-1)+"' value='"+result[i].guide_id+"'/>";   
					           }
					           
					 guideC +="</div>"
					         +"<div class='card-body'>"
					           +"<p>"
					           	+result[i].age+"세 ";
					           	if(result[i].gender == 1){
					           		guideC +="<i class='fas fa-mars' style='color: cornflowerblue;'></i>";	
					           	}else if(result[i].gender == 2){
					           		guideC +="<i class='fas fa-venus' style='color: tomato;'></i>";
					           	}
					           
					           	
					   guideC +="</p>"
					           +"<h6 class='card-product__title'><a href='/project/member/ybh/ybhBoardView.do?guide_id="+result[i].guide_id+"'"
					           
				           		+"onclick=\"window.open(this.href, '_blank', 'width=800,height=800,toolbars=no,scrollbars=yes, left=600, top=50'); return false;\""
					           +">"+result[i].name+"</a></h6>"
					           +"<p class='card-product__price'>"+result[i].priceComma+"원</p>"
					           +"<p>";
					           if(result[i].totalGrade == 0.0){
					        	   guideC += "평가없음";
							   }else{
					               guideC += "<i class='fas fa-star' style='color: gold'></i>"+ result[i].totalGrade;
					           }
					  guideC +="</p>"
					         +"</div>"
					       +"</div>"
					     +"</div>";
					}
					
					$("#guideList").append(guideC);
					

					//----가이드 선택이벤트
					$(".guideImg").off('click');//이벤트 안쌓이게 제거
					$(".guideImg").click(function(){//이벤트 새로선언

						$('#guideList .guideImg > div').css('opacity','0');
						$('#guideList .guideImg > i').css('opacity','0');//일단 체크다지워
						$("#guideDay").html("");//초기화
						var selGuide;
						
						if ($(this).find('input[type=radio]').is(':checked')){  
							
							$(this).find('input[type=radio]').prop('checked', false);
							selGuide= "<table class='table table-bordered' style='text-align: center;'><tr><td>선택된 가이드가 없습니다.</td></tr><td>선택사항</td></tr></table>";
							guideSave[($("#selDay").val()-1)] = "";//배열값도비워버리기
							guideSaveHtml[($("#selDay").val()-1)] = "";//태그복사값도 비워버리기
							$("#basGuide"+($("#selDay").val()-1)).html("<i class='fas fa-walking'></i>가이드없음");//가이드빼버리기
							
						} else {  
							
							$(this).find('div').css('opacity','0.5');
							$(this).find('i').css('opacity','1');
							$(this).find('input[type=radio]').prop('checked', true); 
							guideSave[($("#selDay").val()-1)] = $(this).find('input[type=radio]').val();
							
							selGuide =
								"<table class='table table-bordered'>"
								+"<tr>"
									+"<td><img style='width:70px; height: 70px;' src='"+$(this).find('img').attr('src')+"'/></td>"
									+"<td>"+$(this).next().find('p:nth-child(3)').text()+"</td>"
								+"</tr>"
								+"<tr>"
									+"<td>"+$(this).next().find('h6 > a').text()+"</td>"
									+"<td>"+$(this).next().find('p:nth-child(1)').html()+"</td>"
								+"</tr>"
								+"</table>";
								
							guideSaveHtml[($("#selDay").val()-1)] = selGuide;//옮겨담기
							$("#basGuide"+($("#selDay").val()-1)).html("<i class='fas fa-walking'></i>"+$(this).next().find('h6 > a').text());
						}  
						$("#guideDay").append(selGuide);//태그추가
						
					});//가이드선택
					
					
					
					
				},///Ajax success!!*******************************************
				
				error: function(a,b,c) {
					console.log(a,b,c);
				}
				
			});//ajax
			
		});//셀렉트박스
		
		
		
		
		
		
		
		//========================================================초기값 1일차보이게
		<c:if test="${tList.size()>0 }">
			<c:forEach items="${tList.get(0)}" var="tdto">
				
				var temp;
				temp = temp + 
					"<td>"
						+"<div><img style='width:70px;' src='/project/pic/tourist/${tdto.picture}'/></div>"
						+"<div>${tdto.name}</div>"
					+"</td>";
					
			</c:forEach>
			$("#touristSpotDay tr").append(temp);
			
			var roomTemp;
			<c:if test="${rList.get(0)!= null}">
					roomTemp =
					"<table class='table table-bordered'>"
					+"<tr>"
						+"<td><img style='width:70px; height:70px;' src='/project/pic/hotel/${rList.get(0).hotelPicture}'/></td>"
				
						+"<td>${rList.get(0).priceComma}원</td>"
					+"</tr>"
					+"<tr>"
						+"<td>${rList.get(0).hotelName}</td>"
						+"<td>${rList.get(0).roomClassName} (${rList.get(0).personCount})</td>"
					+"</tr>"
					+"</table>";
			</c:if>
			<c:if test="${rList.get(0)== null}">
				roomTemp= "<table class='table table-bordered' style='text-align: center;'><tr><td>선택된 숙소가 없습니다.</td></tr><td>선택사항</td></tr></table>";
				
			</c:if>
			$("#roomDay").append(roomTemp);	
			
		</c:if>
		
		var guide ="";
		<c:forEach items="${gList }" var="dto">
		guide += 
	          "<div class='col-md-6 col-lg-4 col-xl-2 gA'>"
		       +"<div class='card text-center card-product'>"
		         +"<div class='card-product__img guideImg'>"
		           +"<img class='card-img' src='/project/pic/guide/${dto.picture}'>"
		           +"<div class='checkG'></div>"
		           +"<i class='far fa-check-circle checkGi'></i>"
		           +"<input type='radio' name='guide0' value='${dto.guide_id}'/>"
		         +"</div>"
		         +"<div class='card-body'>"
		           +"<p>"
		           	+"${dto.age }세 "+ 
		           	<c:if test="${dto.gender ==1}">"<i class='fas fa-mars' style='color: cornflowerblue;'></i>"</c:if>
		           	<c:if test="${dto.gender ==2}">"<i class='fas fa-venus' style='color: tomato;'></i>"</c:if>
		           	
		           +"</p>"
		          
		           +"<h6 class='card-product__title'>"
		           	+"<a href='/project/member/ybh/ybhBoardView.do?guide_id=${dto.guide_id }'"
		           		+"onclick=\"window.open(this.href, '_blank', 'width=800,height=800,toolbars=no,scrollbars=yes, left=600, top=50'); return false;\""

		           		+">${dto.name }</a>"
		           +"</h6>"
		           +"<p class='card-product__price'>${dto.priceComma }원</p>"
		           <c:if test="${dto.totalGrade == 0.0}">
			           +"<p>평가없음</p>"
		           </c:if>
		           <c:if test="${dto.totalGrade != 0.0}">
			           +"<p><i class='fas fa-star' style='color: gold'></i> ${dto.totalGrade}</p>"
		           </c:if>
		         +"</div>"
		       +"</div>"
		     +"</div>";

		</c:forEach>
		
		$("#guideList").append(guide);
		
		
		$("#guideDay").append("<table class='table table-bordered' style='text-align: center;'><tr><td>선택된 가이드가 없습니다.</td></tr><td>선택사항</td></tr></table>");
		
		
		
		
		//=====================================초기이벤트
		$(".guideImg").click(function(){
			
			$('#guideList .guideImg > div').css('opacity','0');//전체초기화
			$('#guideList .guideImg > i').css('opacity','0');//전체초기화
			
			$("#guideDay").html("");//초기화	
			
			var tempGB;
			if ($(this).find('input[type=radio]').is(':checked')){  
				
				$(this).find('input[type=radio]').prop('checked', false);//체크해제
				
				tempGB= "<table class='table table-bordered' style='text-align: center;'><tr><td>선택된 가이드가 없습니다.</td></tr><td>선택사항</td></tr></table>";
				guideSave[0] = "";//취소했으니 배열값도 빼버리기
				guideSaveHtml[0] = "";//복사값도 빼버리기
				$("#basGuide0").html("<i class='fas fa-walking'></i>가이드없음");//가이드빼버리기
				
			} else {  

				$(this).find('div').css('opacity','0.5');//투명도조절
				$(this).find('i').css('opacity','1');//투명도조절
				$(this).find('input[type=radio]').prop('checked', true);//체크
				
				guideSave[0] = $(this).find('input[type=radio]').val();//값 바꿈 배열저장
				
				//alert($(this).next().find('h6 > a').text());//이름
				//alert($(this).next().find('p:nth-child(3)').text());//가격
				//alert($(this).find('img').attr('src'));//이미지 src
				
			
				tempGB =
				"<table class='table table-bordered'>"
				+"<tr>"
					+"<td><img style='width:70px; height: 70px;' src='"+$(this).find('img').attr('src')+"'/></td>"
					+"<td>"+$(this).next().find('p:nth-child(3)').text()+"</td>"
				+"</tr>"
				+"<tr>"
					+"<td>"+$(this).next().find('h6 > a').text()+"</td>"
					+"<td>"+$(this).next().find('p:nth-child(1)').html()+"</td>"
				+"</tr>"
				+"</table>";
				guideSaveHtml[0] = tempGB;//옮겨담아보리기
				
				$("#basGuide0").html("<i class='fas fa-walking'></i>"+$(this).next().find('h6 > a').text());//가이드이름 넣어버리기
				
			}  
			$("#guideDay").append(tempGB);	

		});
		
		$("#next").click(function(){
			var nextData ="";
			var nextSize = guideSave.length;
			
			for(var i =0; i<nextSize; i++){
				nextData += "&selGuide"+i+"="+guideSave[i];
			}
			
			location.href='/project/member/ybh/ybhPaySave.do?size='+nextSize+nextData;
		});
		
		
	</script>


</body>

</html>