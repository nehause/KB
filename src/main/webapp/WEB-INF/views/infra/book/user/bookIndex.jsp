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
	<link rel="shortcut icon" href="/resources/template/karma/img/fav_jhj.png">
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
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
</head>

<body id="category">

	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/resources/member/main.html" style="font-family: 'Pacifico', cursive; color: orange;">JHJ</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="/resources/member/main.html">메인</a></li>
							<li class="nav-item"><a class="nav-link" href="/resources/member/loginForm.html">로그인</a></li>
							<li class="nav-item submenu dropdown active">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">국내도서</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/resources/book/bookList.html">책 목록</a></li>
									<li class="nav-item"><a class="nav-link" href="/resources/book/bookView.html">책 상세</a></li>
								</ul>
							</li>
							<!-- <li class="nav-item"><a class="nav-link" href="/resources/member/memberRoomForm.html">마이룸</a></li> -->
							<li class="nav-item submenu dropdown"> 
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">마이룸</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/resources/member/memberRoomForm.html">주문/배송 조회</a></li>
									<li class="nav-item"><a class="nav-link" href="/resources/member/memberModCheckForm.html">회원정보 수정</a></li>
									<li class="nav-item"><a class="nav-link" href="/resources/member/memberModPasswordForm.html">비밀번호 변경</a></li>
									<li class="nav-item"><a class="nav-link" href="/resources/member/memberTransport.html">나의 주소록</a></li>
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
	</header>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>도서 목록</h1>
					<nav class="d-flex align-items-center">
						<a href="/resources/member/main.html">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">도서<span class="lnr lnr-arrow-right"></span></a>
						<a href="bookList.html">도서 목록</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-lg-4 col-md-5">
				<div class="sidebar-categories">
					<div class="head">국내 도서</div>
					<ul class="main-categories">
						<li class="main-nav-list"><a data-toggle="collapse" href="#novel" aria-expanded="false" aria-controls="novel"><span
								 class="lnr lnr-arrow-right"></span>소설<span class="number">(2)</span></a>
							<ul class="collapse" id="novel" data-toggle="collapse" aria-expanded="false" aria-controls="novel">
								<li class="main-nav-list child"><a href="#">한국 소설</a></li>
								<li class="main-nav-list child"><a href="#">영미 소설</a></li>
								<li class="main-nav-list child"><a href="#">일본 소설</a></li>
								<li class="main-nav-list child"><a href="#">중국 소설</a></li>
								<li class="main-nav-list child"><a href="#">기타</a></li>
							</ul>
						</li>

						<li class="main-nav-list"><a data-toggle="collapse" href="#poemEssay" aria-expanded="false" aria-controls="poemEssay"><span
								 class="lnr lnr-arrow-right"></span>시/에세이</a>
							<ul class="collapse" id="poemEssay" data-toggle="collapse" aria-expanded="false" aria-controls="poemEssay">
								<li class="main-nav-list child"><a href="#">한국 시</a></li>
								<li class="main-nav-list child"><a href="#">외국 시</a></li>
								<li class="main-nav-list child"><a href="#">테마 에세이</a></li>
								<li class="main-nav-list child"><a href="#">나라별 에세이</a></li>
								<li class="main-nav-list child"><a href="#">기타</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#economyManagement" aria-expanded="false" aria-controls="economyManagement"><span
								 class="lnr lnr-arrow-right"></span>경제/경영</a>
							<ul class="collapse" id="economyManagement" data-toggle="collapse" aria-expanded="false" aria-controls="economyManagement">
								<li class="main-nav-list child"><a href="#">경영 일반</a></li>
								<li class="main-nav-list child"><a href="#">경영 이론</a></li>
								<li class="main-nav-list child"><a href="#">경영 관리</a></li>
								<li class="main-nav-list child"><a href="#">경영 전략</a></li>
								<li class="main-nav-list child"><a href="#">기타</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#selfDevelopment" aria-expanded="false" aria-controls="selfDevelopment"><span
								 class="lnr lnr-arrow-right"></span>자기계발</a>
							<ul class="collapse" id="selfDevelopment" data-toggle="collapse" aria-expanded="false" aria-controls="selfDevelopment">
								<li class="main-nav-list child"><a href="#">성공/처세</a></li>
								<li class="main-nav-list child"><a href="#">자기능력계발</a></li>
								<li class="main-nav-list child"><a href="#">비즈니스능력개발</a></li>
								<li class="main-nav-list child"><a href="#">인간관계</a></li>
								<li class="main-nav-list child"><a href="#">화술/협상</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#humanities" aria-expanded="false" aria-controls="humanities"><span
								 class="lnr lnr-arrow-right"></span>인문</a>
							<ul class="collapse" id="humanities" data-toggle="collapse" aria-expanded="false" aria-controls="humanities">
								<li class="main-nav-list child"><a href="#">인문학일반</a></li>
								<li class="main-nav-list child"><a href="#">심리학</a></li>
								<li class="main-nav-list child"><a href="#">교육학</a></li>
								<li class="main-nav-list child"><a href="#">철학</a></li>
								<li class="main-nav-list child"><a href="#">문학이론</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#historyCulture" aria-expanded="false" aria-controls="historyCulture"><span
								 class="lnr lnr-arrow-right"></span>역사/문화</a>
							<ul class="collapse" id="historyCulture" data-toggle="collapse" aria-expanded="false" aria-controls="historyCulture">
								<li class="main-nav-list child"><a href="#">역사 일반</a></li>
								<li class="main-nav-list child"><a href="#">세계사</a></li>
								<li class="main-nav-list child"><a href="#">서양사</a></li>
								<li class="main-nav-list child"><a href="#">동양사</a></li>
								<li class="main-nav-list child"><a href="#">한국사</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#religion" aria-expanded="false" aria-controls="religion"><span
								 class="lnr lnr-arrow-right"></span>종교</a>
							<ul class="collapse" id="religion" data-toggle="collapse" aria-expanded="false" aria-controls="religion">
								<li class="main-nav-list child"><a href="#">종교 일반</a></li>
								<li class="main-nav-list child"><a href="#">기독교(개신교)</a></li>
								<li class="main-nav-list child"><a href="#">가톨릭</a></li>
								<li class="main-nav-list child"><a href="#">불교</a></li>
								<li class="main-nav-list child"><a href="#">그외 종교</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#politicsSocial" aria-expanded="false" aria-controls="politicsSocial"><span
								 class="lnr lnr-arrow-right"></span>정치/사회</a>
							<ul class="collapse" id="politicsSocial" data-toggle="collapse" aria-expanded="false" aria-controls="politicsSocial">
								<li class="main-nav-list child"><a href="#">정치/외교</a></li>
								<li class="main-nav-list child"><a href="#">행정/정책</a></li>
								<li class="main-nav-list child"><a href="#">국방/군사</a></li>
								<li class="main-nav-list child"><a href="#">법학</a></li>
								<li class="main-nav-list child"><a href="#">사회학</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#artPopCulture" aria-expanded="false" aria-controls="artPopCulture"><span
								 class="lnr lnr-arrow-right"></span>예술/대중문화</a>
							<ul class="collapse" id="artPopCulture" data-toggle="collapse" aria-expanded="false" aria-controls="artPopCulture">
								<li class="main-nav-list child"><a href="#">예술 일반</a></li>
								<li class="main-nav-list child"><a href="#">미술</a></li>
								<li class="main-nav-list child"><a href="#">만화/애니메이션</a></li>
								<li class="main-nav-list child"><a href="#">디자인/색채</a></li>
								<li class="main-nav-list child"><a href="#">패션/의류</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#science" aria-expanded="false" aria-controls="science"><span
								 class="lnr lnr-arrow-right"></span>과학</a>
							<ul class="collapse" id="science" data-toggle="collapse" aria-expanded="false" aria-controls="science">
								<li class="main-nav-list child"><a href="#">과학 이론</a></li>
								<li class="main-nav-list child"><a href="#">도감</a></li>
								<li class="main-nav-list child"><a href="#">교양 과학</a></li>
								<li class="main-nav-list child"><a href="#">수학</a></li>
								<li class="main-nav-list child"><a href="#">물리학</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#technologyEngineering" aria-expanded="false" aria-controls="technologyEngineering"><span
								 class="lnr lnr-arrow-right"></span>기술/공학</a>
							<ul class="collapse" id="technologyEngineering" data-toggle="collapse" aria-expanded="false" aria-controls="technologyEngineering">
								<li class="main-nav-list child"><a href="#">건축/인테리어</a></li>
								<li class="main-nav-list child"><a href="#">토목/건설</a></li>
								<li class="main-nav-list child"><a href="#">환경/소방/도시/조경</a></li>
								<li class="main-nav-list child"><a href="#">자동차/운전</a></li>
								<li class="main-nav-list child"><a href="#">공학 일반</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a class="border-bottom-0" data-toggle="collapse" href="#computerIt" aria-expanded="false" aria-controls="computerIt">
							<span class="lnr lnr-arrow-right"></span>컴퓨터/IT</a>
							<ul class="collapse" id="computerIt" data-toggle="collapse" aria-expanded="false" aria-controls="computerIt">
								<li class="main-nav-list child"><a href="#">컴퓨터 공학</a></li>
								<li class="main-nav-list child"><a href="#">IT 일반</a></li>
								<li class="main-nav-list child"><a href="#">컴퓨터입문/활용</a></li>
								<li class="main-nav-list child"><a href="#">전산통계/해석</a></li>
								<li class="main-nav-list child"><a href="#" class="border-bottom-0">OS</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="sidebar-filter mt-50">
					<div class="top-filter-head">Product Filters</div>
					<div class="common-filter">
						<div class="head">출판사</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="woongjin" name="publisher"><label for="woongjin">웅진지식하우스</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="eulyu" name="publisher"><label for="eulyu">을유문화사</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="influencial" name="publisher"><label for="influencial">인플루엔셜</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="momo" name="publisher"><label for="momo"></label>모모</li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="readread" name="publisher"><label for="readread">리드리드출판</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="bookhouse" name="publisher"><label for="bookhouse">북하우스</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="begabooks" name="publisher"><label for="begabooks">베가북스</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="itabooks" name="publisher"><label for="itabooks">이타북스</label></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">국가</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="korea" name="country"><label for="korea">한국<span>(4)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="america" name="country"><label for="america">미국<span>(2)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="japan" name="country"><label for="japan"></label>일본<span>(1)</span></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="china" name="country"><label for="china"></label>중국<span>(1)</span></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">가격</div>
						<div class="price-range-area">
							<div id="price-range"></div>
							<div class="value-wrapper d-flex">
								<div class="price">가격:</div>
								<span>₩</span>
								<div id="lower-value"></div>
								<div class="to">~</div>
								<span>₩</span>
								<div id="upper-value"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-9 col-lg-8 col-md-7">
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
					<div class="sorting">
						<select>
							<option value="1">구매 순</option>
							<option value="2">출간일 순</option>
							<option value="3">평점 순</option>
						</select>
					</div>
					<div class="sorting mr-auto">
						<select>
							<option value="1">3개씩 보기</option>
							<option value="2" selected>6개씩 보기</option>
							<option value="3">9개씩 보기</option>
						</select>
					</div>
					<div class="pagination">
						<a href="#" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
						<a href="#" class="active">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
						<a href="#">6</a>
						<a href="#" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
					</div>
				</div>
				<!-- End Filter Bar -->
				<!-- Start Best Seller -->
				<section class="lattest-product-area pb-40 category-list">
					<div class="row">
						<!-- single product -->
						<div class="col-lg-4 col-md-6">
							<div class="single-product">
								<a href="bookView.html">
									<img class="img-fluid" src="/resources/images/product/pb1.png" alt="">
								</a>
								<div class="product-details">
									<h6>역행자</h6>
									<div class="price">
										<h6>₩15,750</h6>
										<h6 class="l-through">₩17,000</h6>
									</div>
									<div class="prd-bottom">
										<a href="bookView.html" class="social-info">
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
										<a href="/resources/book/bookView.html" class="social-info">
											<span class="lnr lnr-move"></span>
											<p class="hover-text">상세보기</p>
										</a>
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
				</section>
				<!-- End Best Seller -->
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
					<div class="sorting mr-auto">
						<select>
							<option value="1">3개씩 보기</option>
							<option value="2" selected>6개씩 보기</option>
							<option value="3">9개씩 보기</option>
						</select>
					</div>
					<div class="pagination">
						<a href="#" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
						<a href="#" class="active">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
						<a href="#">6</a>
						<a href="#" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
					</div>
				</div>
				<!-- End Filter Bar -->
			</div>
		</div>
	</div>

	<!-- Start related-product Area -->
<!-- 	<section class="related-product-area section_gap">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="section-title">
						<h1>Deals of the Week</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
							magna aliqua.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r1.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r2.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r3.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r5.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r6.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r7.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r9.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r10.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r11.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="ctg-right">
						<a href="#" target="_blank">
							<img class="img-fluid d-block mx-auto" src="img/category/c5.jpg" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- End related-product Area -->
	
	<!-- start product Area -->
	<section class="owl-carousel active-product-area section_gap">
		<!-- single product slide -->
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
					<!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<a href="bookView.html">
								<img class="img-fluid" src="/resources/images/product/pb1.png" alt="">
							</a>
							<div class="product-details">
								<h6>역행자</h6>
								<div class="price">
									<h6>₩15,750</h6>
									<h6 class="l-through">₩17,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="bookView.html" class="social-info">
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
									<a href="/resources/book/bookView.html" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- single product -->
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
					<!-- single product -->
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
					<!-- single product -->
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
		<!-- single product slide -->
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
					<!-- single product -->
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
					<!-- single product -->
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
					<!-- single product -->
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
					<!-- single product -->
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

	<!-- Modal Quick Product View -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="container relative">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="product-quick-view">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="quick-view-carousel">
								<div class="item" style="background: url(img/organic-food/q1.jpg);">

								</div>
								<div class="item" style="background: url(img/organic-food/q1.jpg);">

								</div>
								<div class="item" style="background: url(img/organic-food/q1.jpg);">

								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="quick-view-content">
								<div class="top">
									<h3 class="head">Mill Oil 1000W Heater, White</h3>
									<div class="price d-flex align-items-center"><span class="lnr lnr-tag"></span> <span class="ml-10">$149.99</span></div>
									<div class="category">Category: <span>Household</span></div>
									<div class="available">Availibility: <span>In Stock</span></div>
								</div>
								<div class="middle">
									<p class="content">Mill Oil is an innovative oil filled radiator with the most modern technology. If you are
										looking for something that can make your interior look awesome, and at the same time give you the pleasant
										warm feeling during the winter.</p>
									<a href="#" class="view-full">View full Details <span class="lnr lnr-arrow-right"></span></a>
								</div>
								<div class="bottom">
									<div class="color-picker d-flex align-items-center">Color:
										<span class="single-pick"></span>
										<span class="single-pick"></span>
										<span class="single-pick"></span>
										<span class="single-pick"></span>
										<span class="single-pick"></span>
									</div>
									<div class="quantity-container d-flex align-items-center mt-15">
										Quantity:
										<input type="text" class="quantity-amount ml-15" value="1" />
										<div class="arrow-btn d-inline-flex flex-column">
											<button class="increase arrow" type="button" title="Increase Quantity"><span class="lnr lnr-chevron-up"></span></button>
											<button class="decrease arrow" type="button" title="Decrease Quantity"><span class="lnr lnr-chevron-down"></span></button>
										</div>

									</div>
									<div class="d-flex mt-20">
										<a href="#" class="view-btn color-2"><span>Add to Cart</span></a>
										<a href="#" class="like-btn"><span class="lnr lnr-layers"></span></a>
										<a href="#" class="like-btn"><span class="lnr lnr-heart"></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	


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