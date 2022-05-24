<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/client/static" var="url"></c:url>
<div class="topbar-v3">
	<div class="search-open">
		<div class="container">
			<input type="text" class="form-control" placeholder="Search">
			<div class="search-close">
				<i class="icon-close"></i>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<!-- Topbar Navigation -->
				<ul class="left-topbar">
					<li><a>Đồng tiền (VNĐ)</a>
						<ul class="currency">
							<li class="active"><a href="#">VNĐ <i
									class="fa fa-check"></i></a></li>
							<li><a href="#">USD</a></li>
						
						</ul></li>
					<li><a>Tiếng Việt (VN)</a>
						<ul class="language">
							<li class="active"><a href="#">English (EN)<i
									class="fa fa-check"></i></a></li>
							<li><a href="#">Spanish (SPN)</a></li>
							<li><a href="#">Russian (RUS)</a></li>
							<li><a href="#">German (GRM)</a></li>
						</ul></li>
				</ul>
				<!--/end left-topbar-->
			</div>
			<c:choose>
				<c:when test="${sessionScope.account == null}">
					<div class="col-sm-6">
						<ul class="list-inline right-topbar pull-right">
							<li><a href="${pageContext.request.contextPath }/login">Đăng nhập</a>
								| <a href="${pageContext.request.contextPath }/register">Đăng kí</a></li>
							<li><i class="search fa fa-search search-button"></i></li>
						</ul>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-sm-6">
						<ul class="list-inline right-topbar pull-right">
							<li><a href="${pageContext.request.contextPath }/member/myaccount">Tài Khoản</a> | <a
								href="${pageContext.request.contextPath }/logout">Đăng suất</a></li>
							<li><i class="search fa fa-search search-button"></i></li>
						</ul>
					</div>
				</c:otherwise>
			</c:choose>



		</div>
	</div>
	<!--/container-->
</div>
