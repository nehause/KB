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

	<form id="MForm" name="MForm">
		<input type="hidden" id="bookSeq" name="bookSeq">
		<!-- start banner Area -->
		<section class="banner-area">
			<div class="container">
				<div class="row fullscreen align-items-center justify-content-start">
					<div class="col-lg-12">
						<div class="active-banner-slider owl-carousel">
							<c:forEach items="${main}" var="main" varStatus="status">
							<!-- single-slide -->
								<div class="row single-slide align-items-center d-flex">
									<div class="col-lg-5 col-md-6">
										<div class="banner-content">
											<h1><c:out value="${main.topic }" /></h1>
											<p><c:out value="${main.shortIntro }" /></p>
											<div class="add-bag d-flex align-items-center">
												<a class="add-btn crossCenter" href="javascript:goDetail(<c:out value="${main.bookSeq }"/>)"><span class="lnr lnr-cross"></span></a>
												<span class="add-text text-uppercase">구매하러가기</span>
											</div>
										</div>
									</div>
									<div class="col-lg-4 offset-2">
										<div class="banner-img">
											<a href="javascript:goDetail(<c:out value="${main.bookSeq }"/>)">
												<c:out value="${main.sign }" />
											</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End banner Area -->
	</form>
	
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
	<!-- 지향점 배경 색칠이 가능한지 좀더 css적인 요소를 넣을수 있는지 안에 텍스트를 넣을 수 있는지 -->
	<%-- <svg viewBox="0 0 800 800">
		<!-- bestNewList Start -->
		<%@include file="../../../common/user/include/svg.jsp"%>
		<!-- bestNewList End -->
	</svg> --%>

	<!-- bestNewList Start -->
	<%@include file="../../../common/user/include/bestNewList.jsp"%>
	<!-- bestNewList End -->
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlDetail = "/book/bookDetail";
	var seq = $("input:hidden[name=bookSeq]");
	var form = $("form[name=MForm]"); 
	
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