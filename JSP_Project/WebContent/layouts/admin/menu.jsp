<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="admin">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="ti-palette menu-icon"></i>
              <span class="menu-title">Quản lý bán hàng</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="product_manager">Sản phẩm</a></li>
                <li class="nav-item"> <a class="nav-link" href="category_manager">Danh mục</a></li>
                <li class="nav-item"> <a class="nav-link" href="order_manager">Đơn hàng</a></li>
                <li class="nav-item"> <a class="nav-link" href="#">Thuộc tính</a></li>
              </ul>
            </div>
          </li>
     
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic-2" aria-expanded="false" aria-controls="ui-basic-2">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Quản lý cửa hàng</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic-2">
              <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="#">Banner</a></li>
                <li class="nav-item"> <a class="nav-link" href="#">Liên hệ</a></li>
                <li class="nav-item"> <a class="nav-link" href="#">Bình luận</a></li>
                
                 <li class="nav-item"> <a class="nav-link" href="#">Tin tức - Sự kiện</a></li>
              </ul>
            </div>
          </li>
       
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="ti-user menu-icon"></i>
              <span class="menu-title">Quản lý người dùng</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="#"> Khách hàng </a></li>
                <li class="nav-item"> <a class="nav-link" href="#"> Quản trị viên </a></li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>