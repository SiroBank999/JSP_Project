<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="row">
		<div class="col-lg-12 grid-margin stretch-card">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">Thiết lập Banner</h4>

					<div class="table-responsive pt-3">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th>Tiêu đề</th>
									<th>Hình ảnh</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listBanner}" var="list">
									<tr>
										<td>${list.id }</td>
										<td>${list.title}</td>

										<td><img src="./Uploads/${list.images}" width="100px"
											></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
					
                  
					</div>
					<br>
					<div class="text-center">
					<c:if test="${tag >1 }">
						<a  class="btn btn-outline-secondary btn-rounded" href="category_manager?index=${tag-1}">&laquo;</a>
					</c:if>
					
					<c:forEach begin="1" end="${andPag}" var="i">
					  
					  <a  class="${tag == i?'active':''} btn btn-outline-secondary btn-rounded" href="category_manager?index=${i}">${i}</a>
					  </c:forEach>
					   <c:if test="${tag < andPag }">
					   		 <a  class="btn btn-outline-secondary btn-rounded " href="category_manager?index=${tag+1}">&raquo;</a>
					   </c:if>
					</div>
				</div>
				
			</div>
			
		</div>
		<div class="col-12 grid-margin stretch-card">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">Thêm Banner mới</h4>
					<form class="forms-sample" action="addcategory" method="post"
						enctype="multipart/form-data">
						<div class="form-group">
							<label for="exampleInputUsername1">Tên tiêu đề</label> <input
								type="text" class="form-control" id="exampleInputUsername1"
								placeholder="Danh mục" name="categoryname">
						</div>
						<div class="form-group">
							<label>Ảnh</label> <input type="file" name="photo"
								class="file-upload-default">
							<div class="input-group col-xs-12">
								<input type="text" class="form-control file-upload-info"
									name="images" disabled placeholder="Upload Image"> <span
									class="input-group-append">
									<button class="file-upload-browse btn btn-primary"
										type="button">Chọn</button>
								</span>
							</div>
						</div>
						<button type="submit" class="btn btn-primary mr-2">Thêm
							mới</button>
						<button class="btn btn-light">Hủy</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>