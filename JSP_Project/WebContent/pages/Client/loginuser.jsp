<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <html lang="en">
  <head>
  	<title>M3NS ĐĂNG NHẬP</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="templates/Client/login/style.css">

	</head>
	<body class="img js-fullheight" style="background-image: url(Uploads/45.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
				<a href="#"><h2 class="heading-section">M3NS</h2></a>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">ĐĂNG NHẬP</h3>
		      	<form action="login_user" method="post" class="signin-form">
		      		<div class="form-group">
		      			<input type="text" name="Username" class="form-control" placeholder="Tên Đăng Nhập" required>
		      		</div>
	            <div class="form-group">
	              <input id="password-field" type="password" name="Password" class="form-control" placeholder="Mật Khẩu" required>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn btn-primary submit px-3">ĐĂNG NHẬP</button>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">Nhớ mật khẩu
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#" style="color: #fff">Quên mật khẩu?</a>
								</div>
	            </div>
	          </form>
	          
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="templates/Client/login/jquery.min.js"></script>
  <script src="templates/Client/login/popper.js"></script>
  <script src="templates/Client/login/bootstrap.min.js"></script>
  <script src="templates/Client/login/main.js"></script>

	</body>
</html>