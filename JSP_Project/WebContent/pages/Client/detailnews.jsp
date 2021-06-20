<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<div class="container product_section_container">
	
			<div class="col product_section clearfix">
	<div class="breadcrumbs d-flex flex-row align-items-center">
					<ul>
						<li><a href="index.html">Trang Chủ</a></li>
						<li><a href="index.html">Tin Tức</a></li>
						<li class="active"><a href="index.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Tin Mới</a></li>
					</ul>
				</div>
	<div class="main_sliders" style="background-image:url(Uploads/${detail_new.image}">
		
		</div>
		<div class="col text-center">
					<div class="section_title">
						<h2>${detail_new.title }</h2>
						<p style="color:#f44336">Lê Quốc Khánh</p>
					</div>
				</div>
				<br/><br/><br/>
				<div class="contents">
				<div class="row" id="name">
				
		<p>${detail_new.content}</p>
		</div>
		
		</div>
	</div>
	</div>
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
	
	
x