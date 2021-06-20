<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<div class="card modal-content">
				<div class="card-body">
				<h4 class="card-title">Cập nhật sản phẩm</h4>
				<form class="forms-sample" action="product_update" method="post"
					enctype="multipart/form-data">
					<div class="form-group">
						<label for="exampleInputUsername1">ID</label> <input
							type="text" class="form-control" name="id" readonly="readonly"
							placeholder="ID" value="${pd.id}">
					</div>
					<div class="form-group">
						<label for="exampleInputUsername1">Tên sản phẩm</label> <input
							type="text" class="form-control" name="productname"
							placeholder="Tên sản phẩm" value="${pd.productname}">
					</div>
					<div class="form-group">
						<label>Ảnh</label> <input type="file" name="photo"
							class="file-upload-default">
						<div class="input-group col-xs-12">
							<input type="text" class="form-control file-upload-info"
								name="images" disabled placeholder="Upload Image"> <span
								class="input-group-append">
								<button class="file-upload-browse btn btn-primary" type="button">Chọn</button>
							</span>
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Đơn giá</label> <input type="text"
							class="form-control" name="price" placeholder="Đơn giá" value="${pd.price}">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Giảm giá</label> <input
							type="text" class="form-control" name="sale"
							placeholder="Giá giảm" value="${pd.sale}">
					</div>
					<div class="form-group">
						<label for="exampleFormControlSelect3">Trạng thái</label> <select
							class="form-control form-control-sm" name="status">
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
						<textarea class="form-control" name="describe" rows="4">${pd.describe}</textarea>
					</div>
					<button type="submit" class="btn btn-success mr-2">Cập
						nhật</button>

				</form>
			</div>
		</div>
	</div>
</div>
</div>