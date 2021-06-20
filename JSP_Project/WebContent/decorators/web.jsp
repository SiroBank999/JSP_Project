<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
<title>MS3 SHOP</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="templates/Client/styles/bootstrap4/bootstrap.min.css">
<link href="templates/Client/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="templates/Client/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="templates/Client/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="templates/Client/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="templates/Client/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="templates/Client/styles/responsive.css">
<link rel="stylesheet" type="text/css" href="templates/Client/styles/single_styles.css">
<link rel="stylesheet" type="text/css" href="templates/Client/styles/single_responsive.css">
<link rel="stylesheet" type="text/css" href="templates/Client/styles/categories_styles.css">
<link rel="stylesheet" type="text/css" href="templates/Client/styles/categories_responsive.css">
<link rel="stylesheet" type="text/css" href="templates/Client/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" href="templates/Client/plugins/themify-icons/themify-icons.css">

</head>
<body>

<div class="super_container">
<jsp:include page="../layouts/Client/header.jsp"></jsp:include>
<jsp:include page="../pages/Client/${page}.jsp"></jsp:include>
<jsp:include page="../layouts/Client/footer.jsp"></jsp:include>


</div>
<script src="templates/Client/js/jquery-3.2.1.min.js"></script>
<script src="templates/Client/styles/bootstrap4/popper.js"></script>
<script src="templates/Client/styles/bootstrap4/bootstrap.min.js"></script>
<script src="templates/Client/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="templates/Client/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="templates/Client/plugins/OwlCarousel2-2.2.1/owl.classarousel.js"></script>
<script src="templates/Client/plugins/easing/easing.js"></script>
<script src="templates/Client/js/custom.js"></script>
<script src="templates/Client/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="templates/Client/js/categories_custom.js"></script>
<script src="templates/Client/js/single_custom.js"></script>
</body>
</html>