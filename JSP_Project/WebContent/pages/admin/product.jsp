<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12 grid-margin stretch-card">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">Quản lý sản phẩm</h4>
					<p class="card-description float-right">

						<button type="button" class="btn btn-success btn-rounded"
							data-toggle="modal" data-target="#myModal">Thêm sản phẩm
						</button>
					</p>
					<!-- The Modal -->
					<div class="modal" id="myModal">
						<div class="col-md-12 grid-margin stretch-card modal-dialog">
							<div class="card modal-content">
								<div class="card-body">
									<h4 class="card-title">Thêm sản phẩm mới</h4>
									<form class="forms-sample" action="product_add" method="post" enctype="multipart/form-data">
										<div class="form-group">
											<label for="exampleInputUsername1">Tên sản phẩm</label> <input
												type="text" class="form-control" name="productname"
												placeholder="Tên sản phẩm">
										</div>
										<div class="form-group">
											<label>Ảnh</label> <input type="file" name="photo1"
												class="file-upload-default">
											<div class="input-group col-xs-12">
												<input type="text" class="form-control file-upload-info"
													name="images" disabled placeholder="Upload Image">
												<span class="input-group-append">
													<button class="file-upload-browse btn btn-primary"
														type="button">Chọn</button>
												</span>
											</div>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Đơn giá</label> <input
												type="text" class="form-control" name="price"
												placeholder="Đơn giá">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Giảm giá</label> <input
												type="text" class="form-control" name="sale"
												placeholder="Giá giảm">
										</div>
										<div class="form-group">
											<label for="exampleFormControlSelect3">Trạng thái</label> 
											<select class="form-control form-control-sm" name="status">
												<option>Mới</option>
												<option>Giảm giá</option>
												<option>Còn hàng</option>
												<option>Hết hàng</option>

											</select>
										</div>
										<div class="form-group">
											<label for="exampleFormControlSelect">Danh mục</label> <select
												class="form-control form-control-sm" name="category">
												<c:forEach items="${listcategory}" var="listc">
													<option>${listc.categoryname}</option>
												</c:forEach>



											</select>
										</div>
										<div class="form-group">
											<label for="exampleTextarea1">Mô tả</label>
											<textarea class="form-control" name="describe" rows="4"></textarea>
										</div>
										<button type="submit" class="btn btn-success mr-2">Thêm mới</button>
										
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="table-responsive pt-3">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th>Tên sản phẩm</th>
									<th>Hình ảnh</th>
									<th>Đơn giá</th>
									<th>Giá giảm</th>
									<th>Mô tả</th>
									<th>Trạng thái</th>
									<th>Thao tác</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${listproduct}" var="pr">
									<tr>
										<td>1</td>
										<td>${pr.productname}</td>
										<td><img src="./Uploads/${pr.image}" width="100px" alt=""></td>
										<td>
										<fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${pr.price}" />
										 đ</td>
										<td>
										<fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${pr.sale}" />
										 đ</td>
										<td>${pr.describe}</td>
										<td>${pr.status}</td>
										
										<td><a href="product_delete?id=${pr.id}" class="btn btn-danger btn-rounded"><i
												class="ti-trash"></i></a>
												 <a class="btn btn-primary btn-rounded"
											href="product_load_update?id_pd=${pr.id}"><i class="ti-pencil-alt"></i></a></td>
									</tr>

								</c:forEach>






							</tbody>
						</table>
						<br>
						<div class="text-center">
							<c:if test="${tag >1 }">
								<a  class="btn btn-outline-secondary btn-rounded" href="product_manager?index=${tag-1}">&laquo;</a>
							</c:if>
							
							<c:forEach begin="1" end="${andPag}" var="i">
							  
							  <a  class="${tag == i?'active':''} btn btn-outline-secondary btn-rounded" href="product_manager?index=${i}">${i}</a>
							  </c:forEach>
							   <c:if test="${tag < andPag }">
							   		 <a  class="btn btn-outline-secondary btn-rounded " href="product_manager?index=${tag+1}">&raquo;</a>
							   </c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>