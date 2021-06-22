<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

	<div class="fs_menu_overlay"></div>
	
	

	<!-- Slider -->
	<c:forEach items="${banner}" var ="b">
	<div class="main_slider" style="background-image:url(Uploads/${b.image})">
		<div class="container fill_height">
			<div class="row align-items-center fill_height">
				<div class="col">
					<div class="main_slider_content">
						<h6>M3NS/ FASHION</h6>
						<h2>${b.title}</h2>
						<div class="red_button shop_now_button"><a href="shop">THAM QUAN</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
	<!-- Banner -->

	<div class="banner">
		<div class="container">
			<div class="row">
			<c:forEach items="${listcategory}" var="listcategory">
				<div class="col-md-4">
					<div class="banner_item align-items-center" style="background-image:url(Uploads/${listcategory.images})">
						<div class="banner_category">
							<a href="shop_load?id_category=${listcategory.id}">${listcategory.categoryname}</a>
						</div>
					</div>
				</div>
				</c:forEach>
				
			</div>
		</div>
	</div>

	<!-- New Arrivals -->

	<div class="best_sellers">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title new_arrivals_title">
						<h2>SẢN PHẨM MỚI</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="product_slider_container">
						<div class="owl-carousel owl-theme product_slider">

						<!-- Slide 1 -->
						<c:forEach items="${listproductnew}" var="sale">
							<div class="owl-item product_slider_item">
								<div class="product-item">
									<div class="product discount">
										<div class="product_image">
											<img src="Uploads/${sale.image }" alt="">
										</div>
										<div class="favorite favorite_left"></div>
										<div
											class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
											<span>${sale.status}</span>
										</div>
										<div class="product_info">
											<h6 class="product_name">
												<a href="detail?id=${sale.id}">${sale.productname}</a>
											</h6>
											<div class="product_price">${sale.sale}<span>${sale.price}
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

						<!-- Slide 2 -->

							<!-- Slide 10 -->

						</div>

						<!-- Slider Navigation -->

						<div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-left" aria-hidden="true"></i>
						</div>
						<div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-right" aria-hidden="true"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

	<!-- Deal of the week -->

	<div class="deal_ofthe_week">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="deal_ofthe_week_img">
						<img src="Uploads/nguoimau1.png" alt="">
					</div>
				</div>
				<div class="col-lg-6 text-right deal_ofthe_week_col">
					<div class="deal_ofthe_week_content d-flex flex-column align-items-center float-right">
						<div class="section_title">
							<h2>Giá Sốc Mỗi Tuần</h2>
						</div>
						<ul class="timer">
							<li class="d-inline-flex flex-column justify-content-center align-items-center">
								<div id="day" class="timer_num">03</div>
								<div class="timer_unit">Ngày</div>
							</li>
							<li class="d-inline-flex flex-column justify-content-center align-items-center">
								<div id="hour" class="timer_num">15</div>
								<div class="timer_unit">Giờ</div>
							</li>
							<li class="d-inline-flex flex-column justify-content-center align-items-center">
								<div id="minute" class="timer_num">45</div>
								<div class="timer_unit">Phút</div>
							</li>
							<li class="d-inline-flex flex-column justify-content-center align-items-center">
								<div id="second" class="timer_num">23</div>
								<div class="timer_unit">Giây</div>
							</li>
						</ul>
						<div class="red_button deal_ofthe_week_button"><a href="#">Mua Ngay</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Best Sellers -->

	<div class="best_sellers">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title new_arrivals_title">
						<h2>SẢN PHẨM HOT</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="product_slider_container">
						<div class="owl-carousel owl-theme product_slider">

							<!-- Slide 1 -->
				<c:forEach items="${listproducthot}" var="hot">
							<div class="owl-item product_slider_item">
								<div class="product-item">
									<div class="product discount">
										<div class="product_image">
											<img src="Uploads/${hot.image }" alt="">
										</div>
										<div class="favorite favorite_left"></div>
										<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>${hot.status}</span></div>
										<div class="product_info">
											<h6 class="product_name"><a href="detail?id=${hot.id}">${hot.productname}</a></h6>
											<div class="product_price">${hot.sale}<span>${hot.price} </span></div>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>

							<!-- Slide 2 -->

							<!-- Slide 10 -->

						</div>

						<!-- Slider Navigation -->

						<div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-left" aria-hidden="true"></i>
						</div>
						<div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-right" aria-hidden="true"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>		

	<!-- Benefit -->

	<div class="benefit">
		<div class="container">
			<div class="row benefit_row">
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>MIỄN PHÍ GIAO HÀNG</h6>
							<p>với hóa đơn trên 500k</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>GIÁ TIỀN HỢP LÝ</h6>
							<p>đồ đẹp - sang chảnh</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>HOÀN TRẢ TRONG 30 NGÀY</h6>
							<p>đối với những sản phẩm bị lỗi</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>MỞ CỬA TỪ</h6>
							<p>8h00 - 21h00</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Blogs -->

		<div class="blogs">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">
						<h2>TIN MỚI</h2>
					</div>
				</div>
			</div>
			<div class="row blogs_container">
					<c:forEach items="${news}" var="news">
				<div class="col-lg-4 blog_item_col">
					<div class="blog_item">
						<div class="blog_background" style="background-image:url(Uploads/${news.image}})"></div>
						<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
							<h4 class="blog_title">${news.title}</h4>
							<span class="blog_meta">Khanh</span>
							<a class="blog_more"  href="detail_news?id=${news.id}">Đọc Thêm</a>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
						<h4>Thư Ngỏ</h4>
						<p>Hãy cho chúng tôi biết ý kiến của bạn</p>
					</div>
				</div>
				<div class="col-lg-6">
					<form action="post">
						<div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
							<input id="newsletter_email" type="email" placeholder="Your email" required="required" data-error="Valid email is required.">
							<button id="newsletter_submit" type="submit" class="newsletter_submit_btn trans_300" value="Submit">subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->