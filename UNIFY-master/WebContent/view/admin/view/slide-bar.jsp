<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/admin/static" var="url"></c:url>
<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">
			<li class="text-center"><img src="${url}/img/find_user.png"
				class="user-image img-responsive" /></li>


			<li><a class="active-menu" href="#"><i
					class="fa fa-dashboard fa-3x"></i> Dashboard</a></li>
			<li><a
				href="${pageContext.request.contextPath }/admin/product/list"><i
					class="fa fa-desktop fa-3x"></i> Quản Lí Sản Phẩm</a>
				<ul class="nav nav-second-level">
					<li><a href="${pageContext.request.contextPath }/admin/product/add">Thêm Sản Phẩm</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/product/list">Danh Sách Sản Phẩm</a></li>
				</ul></li>
				
				
			<li><a
				href="${pageContext.request.contextPath }/admin/user/list"><i
					class="fa fa-qrcode fa-3x"></i> Quản Lí User</a>
					<ul class="nav nav-second-level">
					<li><a href="${pageContext.request.contextPath }/admin/user/add">Thêm User</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/user/list">Danh Sách Users</a></li>
				</ul>
					</li>
			<li><a
				href="${pageContext.request.contextPath }/admin/order/list"><i
					class="fa fa-bar-chart-o fa-3x"></i> Quản Lí Đơn Hàng</a></li>
			

		
		</ul>

	</div>

</nav>