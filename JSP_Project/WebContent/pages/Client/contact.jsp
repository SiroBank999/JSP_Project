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
						<li class="active"><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Liên Hệ</a></li>
					</ul>
				</div>

			</div>
		</div>

		<!-- Map Container -->

		<div class="row">
			<div class="col">
				<div id="google_map">
					<div class="map_container">
						<div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10590.068409334512!2d107.57843905224279!3d16.468373497529498!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3141a6d3467e9b3d%3A0xbc393903490905c4!2zS2luaCB0aMOgbmggSHXhur8!5e0!3m2!1svi!2s!4v1624077399198!5m2!1svi!2s" width= 100%; height= 507px; " allowfullscreen="" loading="lazy"></iframe></div>
					</div>
				</div>
			</div>
		</div>

		<!-- Contact Us -->

		<div class="row">

			<div class="col-lg-6 contact_col">
				<div class="contact_contents">
					<h1>Liên Hệ Với Chúng Tôi</h1>
					<p>đến là đón, mua là thích</p>
					<div>
						<p>0888xxxxxx</p>
						<p>m3nshop@gmail.com</p>
					</div>
					<div>
						<p>LUÔN LẮNG NGHE KHÁCH HÀNG</p>
					</div>
					<div>
						<p>Mở cửa từ: 8h00-21h00</p>
						<p>Khuyến mãi vào Chủ Nhật hàng tuần</p>
					</div>
				</div>

				<!-- Follow Us -->

				<div class="follow_us_contents">
					<h1>Follow Us</h1>
					<ul class="social d-flex flex-row">
						<li><a href="#" style="background-color: #3a61c9"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#" style="background-color: #41a1f6"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#" style="background-color: #fb4343"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						<li><a href="#" style="background-color: #8f6247"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div>

			</div>

			<div class="col-lg-6 get_in_touch_col">
				<div class="get_in_touch_contents">
					<h1>PHẢN HỒI CỦA BẠN</h1>
					<p>Hãy cho chúng tôi biết suy nghĩ của bạn</p>
					<form action="contact" method="post">
						<div>
							<input id="input_name" class="form_input input_name input_ph" type="text" name="name" placeholder="Họ Tên" required="required" data-error="Name is required.">
							<input id="input_phone" class="form_input input_website input_ph" type="text" name="phone" placeholder="Số Điện Thoại" required="required" data-error="Phone is required.">
							<input id="input_email" class="form_input input_email input_ph" type="email" name="email" placeholder="Email" required="required" data-error="Valid email is required.">
							<textarea id="input_message" class="input_ph input_message" name="content"  placeholder="Phản hồi" rows="3" required data-error="Please, write us a message."></textarea>
						</div>
						<div>
							<button id="review_submit" type="submit" class="red_button message_submit_btn trans_300" value="Submit">send message</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>

	