<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Panda Login</title>
  <link rel="stylesheet" href="templates/Client/login/style.css">
</head>
<body>
<!-- partial:index.partial.html -->
<div class="panda">
  <div class="ear"></div>
  <div class="face">
    <div class="eye-shade"></div>
    <div class="eye-white">
      <div class="eye-ball"></div>
    </div>
    <div class="eye-shade rgt"></div>
    <div class="eye-white rgt">
      <div class="eye-ball"></div>
    </div>
    <div class="nose"></div>
    <div class="mouth"></div>
  </div>
  <div class="body"> </div>
  <div class="foot">
    <div class="finger"></div>
  </div>
  <div class="foot rgt">
    <div class="finger"></div>
  </div>
</div>
<c:if test="${alert == 1}">
	              	<div class="alert alert-danger " role="alert">
	  					Tài khoản mật khẩu không đúng
				  	</div>
              </c:if>
<form action="login_user" method="post">
  <div class="hand"></div>
  <div class="hand rgt"></div>
  <h1>Panda Login</h1>
  <div class="form-group">
    <input  type ="text" name="Username" required="required" class="form-control"/>
    <label class="form-label">Username</label>
  </div>
  <div class="form-group">
    <input id="password" type="password" name="Password" required="required" class="form-control"/>
    <label class="form-label">Password</label>
  
    <button class="btn" type="submit">Login </button>
  </div>
</form>
<!-- partial -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="templates/Client/login/script.js"></script>

</body>
</html>