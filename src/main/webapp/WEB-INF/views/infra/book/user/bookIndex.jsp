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

	<!-- pagination s -->
	<%@include file="../../../common/user/include/header.jsp"%>
	<!-- pagination e -->
	
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
				<form method="post" id="BIForm" name="BIForm">
					<input type="hidden" id="bookSeq" name="bookSeq">
					<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
					<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<section class="lattest-product-area pb-40 category-list">
						<div class="row">
							<!-- single product -->
							<c:choose>
								<c:when test="${fn:length(list) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
									<span style="text-align: center;">조건에 맞는 책이 없습니다</span>
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="list" varStatus="status">
										<div class="col-lg-4 col-md-6">
											<div class="single-product">
												<a href="javascript:goDetail(<c:out value="${list.bookSeq }"/>)">
													<c:out value="${list.sign }"/>
												</a>
												<div class="product-details">
													<h6><c:out value="${list.name }"/></h6>
													<div class="price">
														<h6>₩<c:out value="${list.price }"/></h6>
														<h6 class="l-through">₩<c:out value="${list.cost }"/></h6>
													</div>
													<div class="prd-bottom">
														<a href="javascript:goDetail(<c:out value="${list.bookSeq }"/>)" class="social-info">
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
														<a herf="" class="social-info">
															<span class="lnr lnr-move"></span>
															<p class="hover-text">상세보기</p>
														</a>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
					</section>
				</form>
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
	
	<!-- bestNewList Start -->
	<%@include file="../../../common/user/include/bestNewList.jsp"%>
	<!-- bestNewList End -->

	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlDetail = "/book/bookDetail";
	var goUrlIndex = "/book/bookIndex";
	var seq = $("input:hidden[name=bookSeq]");
	var form = $("form[name=BIForm]"); 
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlIndex).submit();
	}
	
	goDetail = function(seqValue){
		seq.val(seqValue);
		form.attr("action", goUrlDetail).submit();
	}
	
	</script>

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