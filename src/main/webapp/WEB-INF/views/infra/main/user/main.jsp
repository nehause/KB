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
	<style>
	.crossCenter {
    	padding-left: 2px;
   		padding-top: 17px;

	}
	
	</style>
		
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

	<%-- <!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/" style="font-family: 'Pacifico', cursive; color: orange;">JHJ</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<c:choose>
								<c:when test="${sessSeq eq null}">
									<li class="nav-item"><a class="nav-link" href="/member/loginForm">로그인</a></li>
								</c:when>
								<c:otherwise>
									<li class="nav-item" style="padding-top: 10px;"><b><c:out value="${sessName }"/></b>님 안녕하세요</li>
									<li class="nav-item"><a class="nav-link" id="logoutBtn" name="logoutBtn" onclick="logOut();" style="cursor: pointer;">로그아웃</a></li>
								</c:otherwise>
							</c:choose>
							
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
		<div style="display:none;">
			sessSeq: <c:out value="${sessSeq }"/><br>
			sessName: <c:out value="${sessName }"/><br>
			sessId: <c:out value="${sessId }"/><br>
		</div>
	</header>
	<!-- End Header Area --> --%>

	<!-- start banner Area -->
	<section class="banner-area">
		<div class="container">
			<div class="row fullscreen align-items-center justify-content-start">
				<div class="col-lg-12">
					<div class="active-banner-slider owl-carousel">
						<!-- single-slide -->
						<div class="row single-slide align-items-center d-flex">
							<div class="col-lg-5 col-md-6">
								<div class="banner-content">
									<h1>절대 읽지마라! <br>죽을때까지 순리자로 살고싶으면</h1>
									<p>오타쿠 흙수저에서 월 1억 자동 수익을 실현한 무자본 연쇄창업마, 라이프해커 자청의 인생 역주행 공식 대공개!</p>
									<div class="add-bag d-flex align-items-center">
										<a class="add-btn crossCenter" href="../book/bookView.html"><span class="lnr lnr-cross"></span></a>
										<span class="add-text text-uppercase">구매하러가기</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 offset-2">
								<div class="banner-img">
									<a href="../book/bookView.html">
										<img class="img-fluid" src="/resources/user/images/b1.jpg" alt="">
									</a>
								</div>
							</div>
						</div>
						<!-- single-slide -->
						<div class="row single-slide">
							<div class="col-lg-5">
								<div class="banner-content">
									<h1>2022 칸 영화제 감독상 수상작
									<br>〈헤어질 결심〉 오리지널 각본을 만나다</h1>
									<p>영화 각본이 선사하는 즐거움 중 하나는 촬영과 편집을 마친 최종 결과물과의 차이를 발견하는 것이다.<br>
									  『헤어질 결심 각본』은 특히 이런 발견의 즐거움을 풍부하게 담고 있다.</p>
									<div class="add-bag d-flex align-items-center">
										<a class="add-btn crossCenter" href=""><span class="lnr lnr-cross"></span></a>
										<span class="add-text text-uppercase">구매하러가기</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 offset-2">
								<div class="banner-img">
									<a href="#">
										<img class="img-fluid" src="/resources/user/images/b2.jpg" alt="">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- start features Area -->
	<section class="features-area section_gap">
		<div class="container">
			<div class="row features-inner">
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="/resources/template/karma/img/features/f-icon1.png" alt="">
						</div>
						<h6>무료 배송</h6>
						<p>배송비 걱정없이 자유롭게 쇼핑</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="/resources/template/karma/img/features/f-icon2.png" alt="">
						</div>
						<h6>환불/취소 가능</h6>
						<p>문제가 있다면 즉시 취소/환불</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="/resources/template/karma/img/features/f-icon3.png" alt="">
						</div>
						<h6>상시 문의 가능</h6>
						<p>문의할게 있다면 언제나 가능</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="/resources/template/karma/img/features/f-icon4.png" alt="">
						</div>
						<h6>보안 결제</h6>
						<p>해킹 걱정없이 결제해주세요</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end features Area -->

	<!-- Start category Area -->
	<section class="category-area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 col-md-12">
					<div class="row">
						<div class="col-lg-8 col-md-8">
							<div class="single-deal">
								<div class="overlay"></div>
								<img class="img-fluid w-100" src="/resources/user/images/adc1.png" alt="">
								<a href="/resources/user/images/adc1.png" class="img-pop-up" target="_blank">
									<div class="deal-details">
										<h6 class="deal-title">Book for Reading</h6>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="single-deal">
								<div class="overlay"></div>
								<img class="img-fluid w-100" src="/resources/user/images/adc2.png" alt="">
								<a href="/resources/user/images/adc2.png" class="img-pop-up" target="_blank">
									<div class="deal-details">
										<h6 class="deal-title">Retouch for JHJ</h6>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="single-deal">
								<div class="overlay"></div>
								<img class="img-fluid w-100" src="/resources/user/images/adc3.png" alt="">
								<a href="/resources/user/images/adc3.png" class="img-pop-up" target="_blank">
									<div class="deal-details">
										<h6 class="deal-title">Product for Couple</h6>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-8 col-md-8">
							<div class="single-deal">
								<div class="overlay"></div>
								<img class="img-fluid w-100" src="/resources/user/images/adc4.png" alt="">
								<a href="/resources/user/images/adc4.png" class="img-pop-up" target="_blank">
									<div class="deal-details">
										<h6 class="deal-title">Book for Reading</h6>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-deal">
						<div class="overlay"></div>
						<img class="img-fluid w-100" src="/resources/user/images/adc5.png" alt="">
						<a href="/resources/user/images/adc5.png" class="img-pop-up" target="_blank">
							<div class="deal-details">
								<h6 class="deal-title">Book for Reading</h6>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End category Area -->

	<!-- bestNewList Start -->
	<%@include file="../../../common/user/include/bestNewList.jsp"%>
	<!-- bestNewList End -->

	<!-- start product Area -->
	<!-- <section class="owl-carousel active-product-area section_gap">
		single product slide
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>베스트셀러</h1>
							<p>몇주간 가장 인기 있었던 책들을 모아놓은 곳입니다.</p>
						</div>
					</div>
				</div>
				<div class="row">
					single product
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<a href="../book/bookView.html">
								<img class="img-fluid" src="/resources/images/product/pb1.png" alt="">
							</a>
							<div class="product-details">
								<h6>역행자</h6>
								<div class="price">
									<h6>₩15,750</h6>
									<h6 class="l-through">₩17,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="../book/bookView.html" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="../book/bookView.html" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					single product
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/pb2.png" alt="">
							<div class="product-details">
								<h6>헤어질 결심 각본</h6>
								<div class="price">
									<h6>₩13,500</h6>
									<h6 class="l-through">₩15,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					single product
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/pb3.png" alt="">
							<div class="product-details">
								<h6>세상의 마지막 기차역</h6>
								<div class="price">
									<h6>₩12,600</h6>
									<h6 class="l-through">₩14,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					single product
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/pb4.png" alt="">
							<div class="product-details">
								<h6>호감 가는 말투에는 비밀이 있다</h6>
								<div class="price">
									<h6>₩15,120</h6>
									<h6 class="l-through">₩16,800</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		single product slide
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>화제의 신간</h1>
							<p>최근 가장 핫한 신간들을 모아놨습니다.</p>
						</div>
					</div>
				</div>
				<div class="row">
					single product
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/ib1.png" alt="">
							<div class="product-details">
								<h6>비비안 마이어</h6>
								<div class="price">
									<h6>₩28,800</h6>
									<h6 class="l-through">₩32,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					single product
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/ib2.png" alt="">
							<div class="product-details">
								<h6>세 번째 위기, 세 번째 기회</h6>
								<div class="price">
									<h6>₩16,200</h6>
									<h6 class="l-through">₩18,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					single product
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/ib3.png" alt="">
							<div class="product-details">
								<h6>파칭코 1</h6>
								<div class="price">
									<h6>₩14,220</h6>
									<h6 class="l-through">₩15,800</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					single product
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/ib4.png" alt="">
							<div class="product-details">
								<h6>때로는 행복 대신 불행을 택하기도 한다</h6>
								<div class="price">
									<h6>₩14,400</h6>
									<h6 class="l-through">₩16,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
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
	<!-- <script>
	var URL_MAIN = "/";
	function logOut(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/logoutProc"
			/* ,data : $("#formLogin").serialize() */
			,success: function(response) {
				if(response.rt == "success") {
					/* if(response.changePwd == "true") {
						location.href = URL_CHANGE_PWD_FORM;
					} else {
						location.href = URL_MAIN;
					} */
					location.href = URL_MAIN;
					
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	}
	</script> -->
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

</html>