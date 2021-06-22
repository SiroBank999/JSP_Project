<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div class="container contact_container">
	<div class="row">
			<div class="col">

				<!-- Breadcrumbs -->

				<div class="breadcrumbs d-flex flex-row align-items-center">
					<ul>
						<li><a href="index.html">Trang Chủ</a></li>
						<li><a href="categories.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Thông tin khách hàng</a></li>

					</ul>
				</div>

			</div>
		</div> 
		<div class="row">
			<div class="col-lg-6 contact_col">
				<div class="contact_contents">
					<h2>Thông tin khách hàng</h2>
					
					<div>
					<p><i class="fas fa-user"></i> :${sessionScope.user.fullname }</p>
					
					<br/>
					<p><i class="fas fa-phone"></i> :${sessionScope.user.phone }</p>
					<br/>
					<p><i class="fas fa-envelope"></i>:${sessionScope.user.email }</p>
					<br/>
					<p><i class="fas fa-map-marker-alt"> Địa Chỉ: Huế</i></p>
					</div>
				</div>

				<!-- Follow Us -->

				

			</div>

			<div class="col-lg-6 get_in_touch_col">
				<div class="contact_contents">
					<h1>Thay đổi mật khẩu </h1>
					<div class="form-group">
					<form class="forms-sample" action="info" method="post">
					
	              <input id="password-field" type="password" name="Password" class="form-control" placeholder="Mật Khẩu" required>
	              <br/>
	              <input id="password-field" type="password" name="rePassword" class="form-control" placeholder="Xác nhận mật Khẩu" required
	              	
	              
	              >
	              
					<br/>
	              <button type="submit" class="form-control btn btn-primary submit px-3">Thay đổi mật khẩu</button>
	              </form>
	            </div>
				</div>
			</div>

		</div>
	</div>
	</div>