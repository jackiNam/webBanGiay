<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
      <c:url value="/view/client/static" var="url"></c:url>
      
 <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath }">
                        <img id="logo-header" src="${url}/img/logo.png" alt="Logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <!-- Shopping Cart -->
                   <jsp:include page="/view/client/view/cart.jsp"></jsp:include>
                    <!-- End Shopping Cart -->

                    <!-- Nav Menu -->
                    <ul class="nav navbar-nav">
                        <!-- Pages -->
                        <li class="dropdown active">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Trang Chủ
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath }">Home</a></li>
                                <li><a href="${pageContext.request.contextPath }/product/list">Danh sách sản phẩm</a></li>
                            
                                <li><a href="${pageContext.request.contextPath }/member/cart">Giỏ hàng</a></li>
                                <li><a href="${pageContext.request.contextPath }/member/order">Thanh toán</a></li>
                                <li><a href="${pageContext.request.contextPath }/login">Đăng nhập</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath }/register">Đăng kí</a></li>
                            </ul>
                        </li>
                        <!-- End Pages -->

                        <!-- Promotion -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Giày
                            </a>
                            <ul class="dropdown-menu">
                             <li class="dropdown-submenu">
                             
                                    <a href="${pageContext.request.contextPath }/product/list">ALL</a>
                                    
                                </li>
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Nike</a>
                                    
                                </li>
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Adidas</a>
                                      
                                </li>
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Gucci</a>
                                      
                                </li>
                            </ul>
                        </li>
                        <!-- End Promotion -->

                        <!-- Gifts -->
                        <li class="dropdown mega-menu-fullwidth">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Giới Thiệu
                            </a>
                            
                        </li>
                        <!-- End Gifts -->

                        <!-- Books -->
                        <li class="dropdown mega-menu-fullwidth">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Liên Hệ
                            </a>
                            
                        </li>
                        <!-- End Books -->

                        <!-- Clothes -->
                       
                        <!-- End Clothes -->

                        <!-- Main Demo -->
                        
                        <!-- Main Demo -->
                    </ul>
                    <!-- End Nav Menu -->                    
                </div>
            </div>    
        </div>            