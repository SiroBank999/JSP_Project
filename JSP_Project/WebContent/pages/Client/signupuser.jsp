<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>M3NS ĐĂNG KÍ</title>
  <link rel="stylesheet" href="templates/Client/login/style2.css">
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

<form action="registraton" method="post">
  <div class="hand"></div>
  <div class="hand rgt"></div>
  <h1>M3NS ĐĂNG KÍ</h1>
  <c:if test="${alert == 1}">
	              	<p>
	  				Hãy điền đúng thông tin !!! 
				  	</p>
              </c:if>
  <div class="form-group">
    <input  type ="text" name="fullname"  class="form-control"/>
    <label class="form-label">Họ và Tên</label>
  </div>
  <div class="form-group">
    <input  type ="text" name="email"  class="form-control"/>
    <label class="form-label">Email</label>
  </div>
  <div class="form-group">
    <input  type ="text" name="phone"  class="form-control"/>
    <label class="form-label">Số Điện Thoại</label>
  </div>
  <div class="form-group">
    <input  type ="text" name="username"  class="form-control"/>
    <label class="form-label">Tài Khoản</label>
  </div>
  <div class="form-group">
    <input id="password" type="password" name="password"  class="form-control"/>
    <label class="form-label">Mật Khẩu</label>
  
    <button class="btn" type="submit">Đăng Kí </button>
  </div>
</form>
<!-- partial -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="templates/Client/login/script.js"></script>

</body>
</html>