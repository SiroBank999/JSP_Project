<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

	<div class="container product_section_container">
		<div class="row">
			<div class="col product_section clearfix">

				<!-- Breadcrumbs -->

				<div class="breadcrumbs d-flex flex-row align-items-center">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li class="active"><a href="home_client"><i class="fa fa-angle-right" aria-hidden="true"></i>Cửa hàng</a></li>
					</ul>
				</div>

				<!-- Sidebar -->

				<div class="sidebar">
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>Product Category</h5>
						</div>
						<ul class="sidebar_categories">
						<c:forEach items="${category}" var="cate">
							<li><a href="shop_load?id_category=${cate.id }">${cate.categoryname}</a></li>
							</c:forEach>
						</ul>
					</div>

					<!-- Price Range Filtering -->
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>Filter by Price</h5>
						</div>
						<p>
							<input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
						</p>
						<div id="slider-range"></div>
						<div class="filter_button"><span>filter</span></div>
					</div>

					<!-- Sizes -->
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>Kích cỡ</h5>
						</div>
						<ul class="checkboxes">
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>S</span></li>
							<li class="active"><i class="fa fa-square" aria-hidden="true"></i><span>M</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>L</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>XL</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>XXL</span></li>
						</ul>
					</div>

					<!-- Color -->
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>Màu</h5>
						</div>
						<ul class="checkboxes">
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Black</span></li>
							<li class="active"><i class="fa fa-square" aria-hidden="true"></i><span>Pink</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
						</ul>
						<div class="show_more">
							<span><span>+</span>Show More</span>
						</div>
					</div>

				</div>

				<!-- Main Content -->

				<div class="main_content">

					<!-- Products -->

					<div class="products_iso">
						<div class="row">
							<div class="col">

								<!-- Product Sorting -->
					
											
									<ul class="product_sorting">
										<li>
											<span class="type_sorting_text">Default Sorting</span>
											<i class="fa fa-angle-down"></i>
											<ul class="sorting_type">
												<li class="type_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>Default Sorting</span></li>
												<li class="type_sorting_btn" data-isotope-option='{ "sortBy": "price" }'><span>Price</span></li>
												<li class="type_sorting_btn" data-isotope-option='{ "sortBy": "name" }'><span>Product Name</span></li>
											</ul>
										</li>
										<li>
											<span>Show</span>
											<span class="num_sorting_text">6</span>
											<i class="fa fa-angle-down"></i>
											<ul class="sorting_num">
												<li class="num_sorting_btn"><span>6</span></li>
												<li class="num_sorting_btn"><span>12</span></li>
												<li class="num_sorting_btn"><span>24</span></li>
											</ul>
										</li>
									</ul>
									
									<div class="pages d-flex flex-row align-items-center">
										<div class="page_current">
											<span>1</span>
											<ul class="page_selection">
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
											</ul>
										</div>
										<div class="page_total"><span>of</span> 3</div>
										<div id="next_page" class="page_next"><a href="#"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
									</div>

								</div>

								<!-- Product Grid -->

								<div class="product-grid">
							
						
									<c:forEach items="${product}" var="pd">
									<div class="product-item">
										<div class="product discount product_filter">
											<div class="product_image">
												<img src="Uploads/${pd.image}" width="300px" height="200px"/>
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>${pd.status}</span></div>
											<div class="product_info">
												<h6 class="product_name"><a href="detail?id=${pd.id}">${pd.productname}</a></h6>
												<div class="product_price"><fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${pd.price}" /><span></span><strong>đ</strong></div>
											</div>
										</div>
										<div class="red_buttons add_to_cart_buttons"><a href="#">Thêm vào giỏ</a></div>
									</div>
									</c:forEach>	
									
								</div>

								<!-- Product Sorting -->

								

							</div>
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
							<h6>free shipping</h6>
							<p>Suffered Alteration in Some Form</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>cach on delivery</h6>
							<p>The Internet Tend To Repeat</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>45 days return</h6>
							<p>Making it Look Like Readable</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>opening all week</h6>
							<p>8AM - 09PM</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
						<h4>Newsletter</h4>
						<p>Subscribe to our newsletter and get 20% off your first purchase</p>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
						<input id="newsletter_email" type="email" placeholder="Your email" required="required" data-error="Valid email is required.">
						<button id="newsletter_submit" type="submit" class="newsletter_submit_btn trans_300" value="Submit">subscribe</button>
					</div>
				</div>
			</div>
		</div>
	</div>
