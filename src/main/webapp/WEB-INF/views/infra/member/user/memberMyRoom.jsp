<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="/resources/images/fav_jhj.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>JHJ Shop</title>
	<!--
		CSS
		============================================= -->
	<link rel="stylesheet" href="/resources/template/karma/css/linearicons.css">
	<link rel="stylesheet" href="/resources/template/karma/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/template/karma/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/template/karma/css/bootstrap.css">
	<link rel="stylesheet" href="/resources/template/karma/css/owl.carousel.css">
	<link rel="stylesheet" href="/resources/template/karma/css/nice-select.css">
	<link rel="stylesheet" href="/resources/template/karma/css/nouislider.min.css">
	<link rel="stylesheet" href="/resources/template/karma/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/resources/template/karma/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/resources/template/karma/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/template/karma/css/main.css">
	<script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
</head>

<body>

	<!-- pagination s -->
	<%@include file="../../../common/user/include/header.jsp"%>
	<!-- pagination e -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>마이룸</h1>
					<nav class="d-flex align-items-center">
						<a href="main.html">마이룸<span class="lnr lnr-arrow-right"></span></a>
						<a href="memberRoomForm.html">주문/배송 조회</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	
	<!--================Blog Area =================-->
    <section class="blog_area">
        <div class="container">
        	<div class="row">
        		<!-- myRoomSidebar Start -->
     			<%@include file="../../../common/user/include/myRoomSidebar.jsp"%>
     			<!-- myRoomSidebar End -->

                <div class="col-lg-9">
                    <div class="blog_left_sidebar">
                    	<div>
	                    	<div style="height: 20px;"></div>
							<table class="col-lg-12	border-top border-bottom">
								<tr>
									<td class="col-lg-3">
										<div class="user_name">회원님 (회원등급)</div>
									</td>
									<td>
										<span>통합 포인트</span><br>
										<strong>10000</strong><span><b> p</b></span>
									</td>
								</tr>
							</table>
							<div style="height: 20px;"></div>
							<table class="col-lg-12" style="text-align: center;">
								<caption style="caption-side: top"><h3>나의 최근 주문현황</h3><hr></caption>
								<tbody>
								<tr style="border-left: thick;">
									<td class="first">
									</td>
									<td>
										<span>결제 완료</span><span> 0 </span>	<br>
										<i class="fa-solid fa-credit-card fa-3x"></i>
									</td>
									<td>
										<i class="fa-solid fa-chevron-right fa-3x"></i>
									</td>
									<td>
										<span>상품 준비중</span><span> 0 </span><br>
										<i class="fa-solid fa-box fa-3x"></i>
									</td>
									<td>
										<i class="fa-solid fa-chevron-right fa-3x"></i>
									</td>
									<td>
										<span>배송중</span><span> 0 </span><br>
										<i class="fa-solid fa-truck fa-3x"></i>
									</td>
									<td>
										<i class="fa-solid fa-chevron-right fa-3x"></i>
									</td>
									<td>
										<span>배송 완료</span><span> 0 </span><br>
										<i class="fa-solid fa-clipboard-check fa-3x"></i>
									</td>
									<td>
										<ul>
											<li>취소</li>
											<li>교환</li>
											<li>반품</li>
										</ul>
									</td>
								</tr>
								</tbody>
							</table>
							<div style="height:20px;"></div>
							<div class="table-responsive">
			                    <table class="table" style="text-align: center">
			                        <thead>
				                            <tr>
				                                <th scope="col">주문 번호</th>
				                                <th scope="col">상품 금액</th>
				                                <th scope="col">상품 정보</th>
				                                <th scope="col">수량</th>
				                                <th scope="col">주문 상태</th>
				                            </tr>
				                        </thead>
				                        <tbody>
				                            <tr>
				                                <td>
				                                    <h5>1</h5>
				                                </td>
				                                <td>
				                                    <h5>₩15,750</h5>
				                                </td>
				                                <td>
				                                    <div class="media">
				                                        <div class="d-flex">
				                                            <a href="/resources/book/bookView.html"><img src="/resources/images/product/pb1.png" alt="" style="width: 50px;"></a>
				                                        </div>
				                                        <div class="media-body">
				                                            <a href="/resources/book/bookView.html" style="color: gray;"><p style="width: 240px;">[국내도서] 역행자</p></a>
				                                        </div>
				                                    </div>
				                                </td>
				                                <td>
				                                    <h5>1개</h5>
				                                </td>
				                                <td>
				                                	<h5>배송 준비중</h5>
				                                </td>
				                            </tr>
				                            <tr>
				                            	<td>
												</td>
												<td>	
				                           		</td>
				                           		<td>
					                           		<a href="#"><b><i class="fa-solid fa-angles-left"></i></b></a>
					                           		<a href="#"><b><i class="fa-solid fa-angle-left"></i></b></a>
					                           		<a href="#"><b><i class="fa-solid fa-angle-right"></i></b></a>
					                           		<a href="#"><b><i class="fa-solid fa-angles-right"></i></b></a>
				                           		</td>
				                           		<td>
				                           		</td>
				                           		<td>
				                           		</td>
				                            </tr>
			                        </tbody>
			                    </table>
			                </div>
						</div>
                        <!-- Start exclusive deal Area -->
                        <h2>관심 상품</h2>
						<section class="exclusive-deal-area">
							<div class="container-fluid">
								<div class="row justify-content-center align-items-center">
									<div class="col-lg-12 no-padding exclusive-right">
										<div class="active-exclusive-product-slider">
											<div class="single-exclusive-slider">
												<div class="single-product-slider">
													<div class="container">
														<div class="row">
															<!-- single product -->
															<div class="col-lg-4 col-md-6">
																<div class="single-product">
																	<img class="img-fluid" src="/resources/images/product/pb1.png" alt="">
																	<div class="product-details">
																		<h6>역행자</h6>
																		<div class="price">
																			<h6>₩15,750</h6>
																			<h6 class="l-through">₩17,000</h6>
																		</div>
																	</div>
																</div>
															</div>
															<!-- single product -->
															<div class="col-lg-4 col-md-6">
																<div class="single-product">
																	<img class="img-fluid" src="/resources/images/product/pb2.png" alt="">
																	<div class="product-details">
																		<h6>헤어질 결심 각본</h6>
																		<div class="price">
																			<h6>₩13,500</h6>
																			<h6 class="l-through">₩15,000</h6>
																		</div>
																	</div>
																</div>
															</div>
															<!-- single product -->
															<div class="col-lg-4 col-md-6">
																<div class="single-product">
																	<img class="img-fluid" src="/resources/images/product/pb3.png" alt="">
																	<div class="product-details">
																		<h6>세상의 마지막 기차역</h6>
																		<div class="price">
																			<h6>₩12,600</h6>
																			<h6 class="l-through">₩14,000</h6>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<!-- single product -->
												<div class="col-lg-4 col-md-6">
													<div class="single-product">
														<img class="img-fluid" src="/resources/images/product/pb4.png" alt="">
														<div class="product-details">
															<h6>호감 가는 말투에는 비밀이 있다</h6>
															<div class="price">
																<h6>₩15,120</h6>
																<h6 class="l-through">₩16,800</h6>
															</div>
														</div>
													</div>
												</div>
												<!-- single product -->
												<div class="col-lg-4 col-md-6">
													<div class="single-product">
														<img class="img-fluid" src="/resources/images/product/ib1.png" alt="">
														<div class="product-details">
															<h6>비비안 마이어</h6>
															<div class="price">
																<h6>₩28,800</h6>
																<h6 class="l-through">₩32,000</h6>
															</div>
														</div>
													</div>
												</div>
												<!-- single product -->
												<div class="col-lg-4 col-md-6">
													<div class="single-product">
														<img class="img-fluid" src="/resources/images/product/ib2.png" alt="">
														<div class="product-details">
															<h6>세 번째 위기, 세 번째 기회</h6>
															<div class="price">
																<h6>₩16,200</h6>
																<h6 class="l-through">₩18,000</h6>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<!-- single product -->
												<div class="col-lg-4 col-md-6">
													<div class="single-product">
														<img class="img-fluid" src="/resources/images/product/ib3.png" alt="">
														<div class="product-details">
															<h6>파칭코 1</h6>
															<div class="price">
																<h6>₩14,220</h6>
																<h6 class="l-through">₩15,800</h6>
															</div>
														</div>
													</div>
												</div>
												<!-- single product -->
												<div class="col-lg-4 col-md-6">
													<div class="single-product">
														<img class="img-fluid" src="/resources/images/product/ib4.png" alt="">
														<div class="product-details">
															<h6>때로는 행복 대신 불행을 택하기도 한다</h6>
															<div class="price">
																<h6>₩14,400</h6>
																<h6 class="l-through">₩16,000</h6>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- End exclusive deal Area -->
						
                    </div>
                </div>
            </div>
        </div>
    </section>
	<!-- end product Area -->
	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->

	<script src="/resources/template/karma/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="/resources/template/karma/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/template/karma/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/template/karma/js/jquery.nice-select.min.js"></script>
	<script src="/resources/template/karma/js/jquery.sticky.js"></script>
	<script src="/resources/template/karma/js/nouislider.min.js"></script>
	<script src="/resources/template/karma/js/countdown.js"></script>
	<script src="/resources/template/karma/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/template/karma/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resources/template/karma/js/gmaps.min.js"></script>
	<script src="/resources/template/karma/js/main.js"></script>
</body>

