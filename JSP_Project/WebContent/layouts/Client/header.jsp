<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<header class="header trans_300">
		<!-- Top Navigation -->
		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top_nav_left">Miễn phí giao hàng với hóa đơn trên 300k</div>
					</div>
					<div class="col-md-6 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">
								<li class="account">
									<a href="#">
										TÀI KHOẢN CÁ NHÂN
										<i class="fa fa-angle-down"></i>
									</a>
									<ul class="account_selection">
									<c:if test="${sessionScope.user  == null}">
										<li><a href="login_user"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng Nhập</a></li>
										
										<li><a href="registraton"><i class="fa fa-user-plus" aria-hidden="true"></i>Đăng Kí</a></li>
										</c:if>
										<c:if test="${sessionScope.user != null}">
										<li>
										<a href="logout_user"><i class="fa fa-user-plus" aria-hidden="true"></i>Đăng xuất</a>
										</li>
										</c:if>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Main Navigation -->

		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="#">M<span>3NS</span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="home_client">Trang Chủ</a></li>
								<li><a href="shop">Cửa Hàng</a></li>
								<li><a href="news">Tin tức</a></li>
								<li><a href="blog">Giới Thiệu</a></li>
								<li><a href="contact">Liên Hệ</a></li>
							</ul>
							<ul class="navbar_user">
								<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
								<li>${sessionScope.user.fullname}</li>
								<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
								<li class="checkout">
									<a href="#">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
										<span id="checkout_items" class="checkout_items">2</span>
									</a>
								</li>
							</ul>
							<div class="hamburger_container">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</header>