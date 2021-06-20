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
						<li class="active"><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Tin Tức</a></li>
					</ul>
				</div>

			</div>
		</div> 
		<div class="col text-center">
					<div class="section_title">
						<h2>BLOG MỚI NHẤT</h2>
					</div>
				</div>
				<br/>
				<br/>
		
		<div class="intro">
		<div class="body mr-10px">
		
    <div class="row" id="l1">
    <div class="col-md-4" id="l12" align="left">
      <img src="Uploads/88.png">
    </div>
    <div class="col-md-8" id="l11" align="left">
      <h1><B>KHỞI NGUỒN</B></h1>
      <h4><b>Thương hiệu bắt nguồn từ cà phê Việt Nam</b></h4>
      <br>
      <p>Highlands Coffee® được sinh ra từ niềm đam mê bất tận với hạt cà phê Việt Nam. Qua một chặng đường dài, chúng tôi đã không ngừng mang đến những sản phẩm cà phê thơm ngon, sánh đượm trong không gian thoải mái và lịch sự với mức giá hợp lý. Những ly cà phê của chúng tôi không chỉ đơn thuần là thức uống quen thuộc mà còn mang trên mình một sứ mệnh văn hóa phản ánh một phần nếp sống hiện đại của người Việt Nam.</p>
     
    </div>
    
  </div>
  <div class="row" id="l2">
    <div class="col-md-4" id="l21" align="left">
      <img src="Uploads/888.png">
    </div>
    <div class="col-md-8" id="l22" align="right">
      <h1><b>DỊCH VỤ KHÁCH HÀNG</b></h1>
      <h4><b>Chào mừng bạn đến với Highlands Coffee®</b></h4>
      <br>
      <p>Chúng tôi mong muốn mang đến cho bạn những trải nghiệm đáng nhớ mỗi lần đến Highlands Coffee®. Hãy chia sẻ với chúng tôi để chúng tôi có thể mang đến cho bạn những trải nghiệm tuyệt vời hơn thế.</p>
     
    </div>
  </div>
  <div class="row" id="l3">
   <div class="col-md-4" id="l32" align="left">
      <img src="Uploads/8888.png">
    </div>
    <div class="col-md-8" id="l31" align="left">
      <h1><B>NGHỀ NGHIỆP</B></h1>
      <h4><b>Hãy khởi đầu sự nghiệp cùng với Highlands Coffee®</b></h4>
      <br>
      <p>Với sứ mệnh trở thành thương hiệu cà phê Việt Nam dẫn đầu, Highlands Coffee® luôn tìm kiếm những ứng cử viên tiềm năng có chung niềm đam mê và nỗ lực cùng chúng tôi vươn tới thành công. Chúng tôi luôn chào đón các bạn gia nhập vào đội ngũ chuyên nghiệp của gia đình Highlands Coffee®.</p>
       
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
						<div class="blog_background" style="background-image:url(Uploads/${news.image})"></div>
						<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
							<h4 class="blog_title">${news.title }</h4>
							<span class="blog_meta">${news.describe }</span>
							<a class="blog_more" href="detail_news?id=${news.id}">Đọc Thêm</a>
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
		</div>	
		