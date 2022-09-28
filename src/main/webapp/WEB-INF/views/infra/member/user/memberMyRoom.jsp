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

	<!-- Start Header Area -->
	<!-- <header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					Brand and toggle get grouped for better mobile display
					<a class="navbar-brand logo_h" href="/" style="font-family: 'Pacifico', cursive; color: orange;">JHJ</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					Collect the nav links, forms, and other content for toggling
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/">메인</a></li>
							<li class="nav-item"><a class="nav-link" href="/loginForm">로그인</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">국내도서</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/book/bookIndex">책 목록</a></li>
									<li class="nav-item"><a class="nav-link" href="/book/bookView">책 상세</a></li>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">마이룸</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/member/memberMyRoom/">주문/배송 조회</a></li>
									<li class="nav-item"><a class="nav-link" href="/member/memberRoomModCheck">회원정보 수정</a></li>
									<li class="nav-item"><a class="nav-link" href="/member/memberRoomModPassword">비밀번호 변경</a></li>
									<li class="nav-item"><a class="nav-link" href="/member/memberRoomTransportForm">나의 주소록</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form class="d-flex justify-content-between">
					<input type="text" class="form-control" id="search_input" placeholder="검색어를 입력해주세요">
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header> -->
	<!-- End Header Area -->

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
        	
     <!--        	<div class="col-lg-3">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            <h2><b>마이룸</b></h2>
                            <hr>
                        </aside>
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">일반상품 주문관리</h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="/member/memberMyRoom/" class="d-flex justify-content-between">
                                        <p>주문/배송 조회</p>
                                    </a>
                                </li>
                            </ul>
                        </aside>
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">회원정보관리</h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="/member/memberRoomModCheck" class="d-flex justify-content-between">
                                        <p>회원정보수정</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/member/memberRoomModPassword" class="d-flex justify-content-between">
                                        <p>비밀번호 변경</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/member/memberRoomTransportForm" class="d-flex justify-content-between">
                                        <p>나의 주소록</p>
                                    </a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                </div> -->
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
	<!-- start footer Area -->
	<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Me</h6>
						<p>
							이 사이트는 교보문고 사이트에 기반해서 제작되었으며 karma 템플릿을 이용했다는것을 명시합니다.
						</p>
					</div>
				</div>
				<div class="col-lg-4  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Newsletter</h6>
						<p>저희들의 최신 정보를 보내드립니다.</p>
						<div class="" id="mc_embed_signup">

							<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get" class="form-inline">

								<div class="d-flex flex-row">

									<input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
									 required="" type="email">


									<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
									</div>

									<!-- <div class="col-lg-4 col-md-4">
												<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
											</div>  -->
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Retouch by J</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="/resources/images/footer/fi1.png" alt=""></li>
							<li><img src="/resources/images/footer/fi2.png" alt=""></li>
							<li><img src="/resources/images/footer/fi3.png" alt=""></li>
							<li><img src="/resources/images/footer/fi4.png" alt=""></li>
							<li><img src="/resources/images/footer/fi5.png" alt=""></li>
							<li><img src="/resources/images/footer/fi6.png" alt=""></li>
							<li><img src="/resources/images/footer/fi7.png" alt=""></li>
							<li><img src="/resources/images/footer/fi8.png" alt=""></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Follow Us</h6>
						<p>SNS를 팔로우 해보세요</p>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
				<p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> retouch by JHJ
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

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

