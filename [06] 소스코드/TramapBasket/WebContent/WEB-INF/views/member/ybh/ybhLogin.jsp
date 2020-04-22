<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Signin Template for Bootstrap</title>

    <link href="<%= request.getContextPath()%>/asset/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
	
	<style>
		body {
		  padding-top: 40px;
		  padding-bottom: 40px;
		  background-color: #eee;
		}
		
		.form-signin {
		  max-width: 330px;
		  padding: 15px;
		  margin: 0 auto;
		}
		.form-signin .form-signin-heading,
		.form-signin .checkbox {
		  margin-bottom: 10px;
		}
		.form-signin .checkbox {
		  font-weight: normal;
		}
		.form-signin .form-control {
		  position: relative;
		  height: auto;
		  -webkit-box-sizing: border-box;
		     -moz-box-sizing: border-box;
		          box-sizing: border-box;
		  padding: 10px;
		  font-size: 16px;
		}
		.form-signin .form-control:focus {
		  z-index: 2;
		}
		.form-signin input[type="email"] {
		  margin-bottom: -1px;
		  border-bottom-right-radius: 0;
		  border-bottom-left-radius: 0;
		}
		.form-signin input[type="password"] {
		  margin-bottom: 10px;
		  border-top-left-radius: 0;
		  border-top-right-radius: 0;
		}
		
	</style>
   


  </head>

  <body>

    <div class="container">
		
      <form class="form-signin" action="/project/member/ybh/ybhLoginOK.do" method="POST">
        <h2 class="form-signin-heading">Login</h2>
        <input type="text" id="memberId" name="memberId" class="form-control" placeholder="아이디" required autofocus>
        <input type="password" id="memberPw" name="memberPw" class="form-control" placeholder="패스워드" required>
        
        <c:if test="${!empty how }">
	        <input type="hidden" id="how" name="how" value="1"/>
        </c:if>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
        
        <div style="padding-top: 10px;">
        	<input type="button" value="회원가입" class="btn btn-info"/>
        </div>
      </form>

    </div> <!-- /container -->
	

  </body>
  
  <script>
	
  </script>
</html>
