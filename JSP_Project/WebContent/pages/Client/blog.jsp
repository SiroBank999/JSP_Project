<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container contact_container">
	<div class="row">
		<div class="col">

			<!-- Breadcrumbs -->

			<div class="breadcrumbs d-flex flex-row align-items-center">
				<ul>
					<li><a href="index.html">Trang Chủ</a></li>
					<li class="active"><a href="#"><i
							class="fa fa-angle-right" aria-hidden="true"></i>Giới Thiệu</a></li>
				</ul>
			</div>

		</div>
	</div>
	<div class="col text-center">
		<div class="section_title">
			<h2>GIỚI THIỆU</h2>
		</div>
	</div>
	<br /> <br />

	<div class="intro">
		<div class="body mr-10px">

			<div class="row" id="l1">
				<div class="col-md-4" id="l12" align="left">
					<img src="Uploads/nguoimau1.png">
				</div>
				<div class="col-md-8" id="l11" align="left">
					<h3><B>KHỞI NGUỒN</B></h3>
					<h4>
						<b>Thương hiệu </b>
					</h4>
					<br>
					<p>Đây là một trong những phong cách có nhiều sự ảnh hưởng đặc
						biệt là giới trẻ. Với các gam màu tiêu biểu xám, trắng và đen kèm
						theo thiết kế có phần bụi bặm đã giúp cho phong cách này có chỗ
						đứng nhất định trong làng thời trang cũng như có sức ảnh hưởng
						nhất định với việc ra đời của các thương hiệu thời trang nổi
						tiếng, và M3NS Shop là một trong những thương hiệu đó. </p>

				</div>

			</div>
			<div class="row" id="l2">
				<div class="col-md-4" id="l21" align="left">
					<img src="Uploads/mau3.png">
				</div>
				<div class="col-md-8" id="l22" align="left">
					<h3><B>DỊCH VỤ</B></h3>
					<h4>
						<b>Sáng tạo phong cách</b>
					</h4>
					<br>
					<p>Được thành lập và chính thức đi vào hoạt động từ năm 2014,
						với các sản phẩm hướng tới các khách hàng trẻ có độ tuổi từ 14-30,
						có phong cách năng động, cá tính. Thương hiệu này không chỉ phát
						triển các sản phẩm quần áo mà còn chú trọng vào nhiều phụ kiện đi
						kèm như quần áo, backpack, nón… Khi mới ra mắt, M3NS Shop gây ấn
						tượng bởi phong cách streetwear đơn giản và phóng khoáng. Các tín
						đồ thời trang có thể tự do thể hiện cá tính và tạo nên xu hướng
						mới. Vẻ "ngầu" tự nhiên cùng điểm nhấn trong phong cách streetwear
						đã giúp cho MENS Shop chiếm được tình cảm của nhiều người, đặc
						biệt là các bạn trẻ. </p>

				</div>
			</div>
			<div class="row" id="l3">
				<div class="col-md-4" id="l32" align="left">
					<img src="Uploads/mau2.png">
				</div>
				<div class="col-md-8" id="l31" align="left">
				<h3><B>NGHỀ NGHIỆP</B></h3>
					<h4>
						<b>Chào mừng bạn đến với M3NS</b>
					</h4>
					<br>
					<p>Tính đến thời điểm hiện tại, M3NS Shop là một thương hiệu mà khi
						khách hàng sử dụng sẽ cảm thấy thoải mái và tự tin với chất lượng
						sản phẩm, những outfit của M3NS Shop đủ đặc trưng, đủ khác biệt
						giữa rất nhiều streetwear brand trên thị trường." Đó là lý do vì
						sao các item của M3NS Shop được rất nhiều người ưa chuộng với
						những sáng tạo không ngừng. </p>

				</div>
			</div>
		</div>
	</div>




	<div class="blogs">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">
						<h2>THỜI TRANG NƯỚC NGOÀI</h2>
					</div>
				</div>
			</div>
			<div class="row blogs_container">
				<c:forEach items="${news}" var="news">
					<div class="col-lg-4 blog_item_col">
						<div class="blog_item">
							<div class="blog_background"
								style="background-image:url(Uploads/${news.image})"></div>
							<div
								class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
								<h4 class="blog_title">${news.title }</h4>
								<span class="blog_meta">${news.describe }</span> <a
									class="blog_more" href="detail_news?id=${news.id}">Đọc Thêm</a>
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
					<div
						class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
						<h4>Thư Ngỏ</h4>
						<p>Hãy cho chúng tôi biết ý kiến của bạn</p>
					</div>
				</div>
				<div class="col-lg-6">
					<form action="post">
						<div
							class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
							<input id="newsletter_email" type="email"
								placeholder="Your email" required="required"
								data-error="Valid email is required.">
							<button id="newsletter_submit" type="submit"
								class="newsletter_submit_btn trans_300" value="Submit">subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>