<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>MS3 Admin</title>
  <link rel="stylesheet" href="templates/admin/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="templates/admin/vendors/base/vendor.bundle.base.css">
  <link rel="stylesheet" href="templates/admin/css/style.css">
  <link rel="shortcut icon" href="templates/admin/images/favicon.png" />
  
</head>
<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper">
			<jsp:include page="../layouts/admin/header.jsp"></jsp:include>
			<jsp:include page="../layouts/admin/menu.jsp"></jsp:include>
			<div class="main-panel">
				<jsp:include page="../pages/admin/${page}.jsp"></jsp:include>
				<jsp:include page="../layouts/admin/footer.jsp"></jsp:include>
			</div>
			
		</div>
	</div>
  <script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
  <script src="templates/admin/vendors/base/vendor.bundle.base.js"></script>
  <script src="templates/admin/vendors/chart.js/Chart.min.js"></script>
  <script src="templates/admin/js/off-canvas.js"></script>
  <script src="templates/admin/js/hoverable-collapse.js"></script>
  <script src="templates/admin/js/template.js"></script>
  <script src="templates/admin/js/todolist.js"></script>
  <script src="templates/admin/js/dashboard.js"></script>
  <script src="templates/admin/js/file-upload.js"></script>

</body>
</html>