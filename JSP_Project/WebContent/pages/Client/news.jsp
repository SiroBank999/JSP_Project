<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<div class="container contact_container">
		
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
		