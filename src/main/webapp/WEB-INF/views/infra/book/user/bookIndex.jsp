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
					<h1>?????? ??????</h1>
					<nav class="d-flex align-items-center">
						<a href="/main">??????<span class="lnr lnr-arrow-right"></span></a>
						<a href="/book/bookIndex">?????? ??????</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<div class="container">
		<div class="row justify-content-center">
			<!-- <div class="col-xl-3 col-lg-4 col-md-5">
				<div class="sidebar-categories">
					<div class="head">?????? ??????</div>
					<ul class="main-categories">
						<li class="main-nav-list"><a data-toggle="collapse" href="#novel" aria-expanded="false" aria-controls="novel"><span
								 class="lnr lnr-arrow-right"></span>??????<span class="number">(2)</span></a>
							<ul class="collapse" id="novel" data-toggle="collapse" aria-expanded="false" aria-controls="novel">
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">??????</a></li>
							</ul>
						</li>

						<li class="main-nav-list"><a data-toggle="collapse" href="#poemEssay" aria-expanded="false" aria-controls="poemEssay"><span
								 class="lnr lnr-arrow-right"></span>???/?????????</a>
							<ul class="collapse" id="poemEssay" data-toggle="collapse" aria-expanded="false" aria-controls="poemEssay">
								<li class="main-nav-list child"><a href="#">?????? ???</a></li>
								<li class="main-nav-list child"><a href="#">?????? ???</a></li>
								<li class="main-nav-list child"><a href="#">?????? ?????????</a></li>
								<li class="main-nav-list child"><a href="#">????????? ?????????</a></li>
								<li class="main-nav-list child"><a href="#">??????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#economyManagement" aria-expanded="false" aria-controls="economyManagement"><span
								 class="lnr lnr-arrow-right"></span>??????/??????</a>
							<ul class="collapse" id="economyManagement" data-toggle="collapse" aria-expanded="false" aria-controls="economyManagement">
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">??????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#selfDevelopment" aria-expanded="false" aria-controls="selfDevelopment"><span
								 class="lnr lnr-arrow-right"></span>????????????</a>
							<ul class="collapse" id="selfDevelopment" data-toggle="collapse" aria-expanded="false" aria-controls="selfDevelopment">
								<li class="main-nav-list child"><a href="#">??????/??????</a></li>
								<li class="main-nav-list child"><a href="#">??????????????????</a></li>
								<li class="main-nav-list child"><a href="#">????????????????????????</a></li>
								<li class="main-nav-list child"><a href="#">????????????</a></li>
								<li class="main-nav-list child"><a href="#">??????/??????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#humanities" aria-expanded="false" aria-controls="humanities"><span
								 class="lnr lnr-arrow-right"></span>??????</a>
							<ul class="collapse" id="humanities" data-toggle="collapse" aria-expanded="false" aria-controls="humanities">
								<li class="main-nav-list child"><a href="#">???????????????</a></li>
								<li class="main-nav-list child"><a href="#">?????????</a></li>
								<li class="main-nav-list child"><a href="#">?????????</a></li>
								<li class="main-nav-list child"><a href="#">??????</a></li>
								<li class="main-nav-list child"><a href="#">????????????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#historyCulture" aria-expanded="false" aria-controls="historyCulture"><span
								 class="lnr lnr-arrow-right"></span>??????/??????</a>
							<ul class="collapse" id="historyCulture" data-toggle="collapse" aria-expanded="false" aria-controls="historyCulture">
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">?????????</a></li>
								<li class="main-nav-list child"><a href="#">?????????</a></li>
								<li class="main-nav-list child"><a href="#">?????????</a></li>
								<li class="main-nav-list child"><a href="#">?????????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#religion" aria-expanded="false" aria-controls="religion"><span
								 class="lnr lnr-arrow-right"></span>??????</a>
							<ul class="collapse" id="religion" data-toggle="collapse" aria-expanded="false" aria-controls="religion">
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">?????????(?????????)</a></li>
								<li class="main-nav-list child"><a href="#">?????????</a></li>
								<li class="main-nav-list child"><a href="#">??????</a></li>
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#politicsSocial" aria-expanded="false" aria-controls="politicsSocial"><span
								 class="lnr lnr-arrow-right"></span>??????/??????</a>
							<ul class="collapse" id="politicsSocial" data-toggle="collapse" aria-expanded="false" aria-controls="politicsSocial">
								<li class="main-nav-list child"><a href="#">??????/??????</a></li>
								<li class="main-nav-list child"><a href="#">??????/??????</a></li>
								<li class="main-nav-list child"><a href="#">??????/??????</a></li>
								<li class="main-nav-list child"><a href="#">??????</a></li>
								<li class="main-nav-list child"><a href="#">?????????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#artPopCulture" aria-expanded="false" aria-controls="artPopCulture"><span
								 class="lnr lnr-arrow-right"></span>??????/????????????</a>
							<ul class="collapse" id="artPopCulture" data-toggle="collapse" aria-expanded="false" aria-controls="artPopCulture">
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">??????</a></li>
								<li class="main-nav-list child"><a href="#">??????/???????????????</a></li>
								<li class="main-nav-list child"><a href="#">?????????/??????</a></li>
								<li class="main-nav-list child"><a href="#">??????/??????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#science" aria-expanded="false" aria-controls="science"><span
								 class="lnr lnr-arrow-right"></span>??????</a>
							<ul class="collapse" id="science" data-toggle="collapse" aria-expanded="false" aria-controls="science">
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">??????</a></li>
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">??????</a></li>
								<li class="main-nav-list child"><a href="#">?????????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a data-toggle="collapse" href="#technologyEngineering" aria-expanded="false" aria-controls="technologyEngineering"><span
								 class="lnr lnr-arrow-right"></span>??????/??????</a>
							<ul class="collapse" id="technologyEngineering" data-toggle="collapse" aria-expanded="false" aria-controls="technologyEngineering">
								<li class="main-nav-list child"><a href="#">??????/????????????</a></li>
								<li class="main-nav-list child"><a href="#">??????/??????</a></li>
								<li class="main-nav-list child"><a href="#">??????/??????/??????/??????</a></li>
								<li class="main-nav-list child"><a href="#">?????????/??????</a></li>
								<li class="main-nav-list child"><a href="#">?????? ??????</a></li>
							</ul>
						</li>
						<li class="main-nav-list"><a class="border-bottom-0" data-toggle="collapse" href="#computerIt" aria-expanded="false" aria-controls="computerIt">
							<span class="lnr lnr-arrow-right"></span>?????????/IT</a>
							<ul class="collapse" id="computerIt" data-toggle="collapse" aria-expanded="false" aria-controls="computerIt">
								<li class="main-nav-list child"><a href="#">????????? ??????</a></li>
								<li class="main-nav-list child"><a href="#">IT ??????</a></li>
								<li class="main-nav-list child"><a href="#">???????????????/??????</a></li>
								<li class="main-nav-list child"><a href="#">????????????/??????</a></li>
								<li class="main-nav-list child"><a href="#" class="border-bottom-0">OS</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="sidebar-filter mt-50">
					<div class="top-filter-head">Product Filters</div>
					<div class="common-filter">
						<div class="head">?????????</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="woongjin" name="publisher"><label for="woongjin">?????????????????????</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="eulyu" name="publisher"><label for="eulyu">???????????????</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="influencial" name="publisher"><label for="influencial">???????????????</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="momo" name="publisher"><label for="momo"></label>??????</li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="readread" name="publisher"><label for="readread">??????????????????</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="bookhouse" name="publisher"><label for="bookhouse">????????????</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="begabooks" name="publisher"><label for="begabooks">????????????</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="itabooks" name="publisher"><label for="itabooks">????????????</label></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">??????</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="korea" name="country"><label for="korea">??????<span>(4)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="america" name="country"><label for="america">??????<span>(2)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="japan" name="country"><label for="japan"></label>??????<span>(1)</span></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="china" name="country"><label for="china"></label>??????<span>(1)</span></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">??????</div>
						<div class="price-range-area">
							<div id="price-range"></div>
							<div class="value-wrapper d-flex">
								<div class="price">??????:</div>
								<span>???</span>
								<div id="lower-value"></div>
								<div class="to">~</div>
								<span>???</span>
								<div id="upper-value"></div>
							</div>
						</div>
					</div>
				</div>
			</div> -->
			<div class="col-xl-9 col-lg-8 col-md-7">
				<form method="post" id="BIForm" name="BIForm">
					<input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
					<input type="hidden" id="bookSeq" name="bookSeq">
					<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
					<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
					<div class="sorting">
						<select id="searchOption" name="searchOption">
							<option value="1" <c:if test="${vo.searchOption eq 1}">selected</c:if>>?????? ???</option>
							<option value="2" <c:if test="${vo.searchOption eq 2}">selected</c:if>>????????? ???</option>
							<option value="3" <c:if test="${vo.searchOption eq 3}">selected</c:if>>?????? ?????? ???</option>
							<option value="4" <c:if test="${vo.searchOption eq 4}">selected</c:if>>?????? ?????? ???</option>
							<option value="5" <c:if test="${vo.searchOption eq 5}">selected</c:if>>?????? ????????? ???</option>
						</select>
					</div>
					<div class="sorting mr-auto">
						<select id="pageNum" name="pageNum">
							<option value="3" <c:if test="${vo.pageNum eq 3}">selected</c:if>>3?????? ??????</option>
							<option value="6" <c:if test="${vo.pageNum eq 6}">selected</c:if>>6?????? ??????</option>
							<option value="9" <c:if test="${vo.pageNum eq 9}">selected</c:if>>9?????? ??????</option>
						</select>
					</div>
					<div class="pagination">
						<!-- <a href="#" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
						<a href="#" class="active">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
						<a href="#">6</a>
						<a href="#" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a> -->
					
						<c:if test="${vo.startPage gt vo.pageNumToShow}">
		 	               <a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a>
						</c:if>
						<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
							<c:choose>
								<c:when test="${i.index eq vo.thisPage}">
						           <a class="page-link" href="javascript:goList(${i.index})">${i.index}</a>
								</c:when>
								<c:otherwise>             
						           <a class="page-link" href="javascript:goList(${i.index})">${i.index}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>                
						<c:if test="${vo.endPage ne vo.totalPages}">                
	       			    	<a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a>
						</c:if>
					</div>
				</div>
				<!-- End Filter Bar -->
				<!-- Start Best Seller -->
					<section class="lattest-product-area pb-40 category-list">
						<div class="row">
							<!-- single product -->
							<c:choose>
								<c:when test="${fn:length(index) eq 0}"> <!-- length(index)??? 0?????? ?????? ?????? -->
									<span style="text-align: center;">????????? ?????? ?????? ????????????</span>
								</c:when>
								<c:otherwise>
									<c:forEach items="${index}" var="index" varStatus="status">
										<div class="col-lg-4 col-md-6">
											<div class="single-product">
												<a href="javascript:goDetail(<c:out value="${index.bookSeq }"/>)">
													<c:set var="type" value="1"/>		<!-- #-> -->
													<c:if test="${index.type eq type }">
														<img src="<c:out value="${index.path }"/><c:out value="${index.uuidName }"/>" class="rounded" style="cursor:pointer; height: 360px;"/>
													</c:if>
												</a>
												<div class="product-details">
													<a href="javascript:goDetail(<c:out value="${index.bookSeq }"/>)"><h6><c:out value="${index.name }"/></h6></a>
													<div class="price">
														<h6>???<c:out value="${index.price }"/></h6>
														<h6 class="l-through">???<c:out value="${index.cost }"/></h6>
													</div>
													<div class="prd-bottom">
														<a href="javascript:goOrder(<c:out value="${index.bookSeq }"/>)" class="social-info">
															<span class="ti-bag"></span>
															<p class="hover-text">????????????</p>
														</a>
														<!-- <a href="" class="social-info">
															<span class="lnr lnr-heart"></span>
															<p class="hover-text">????????????</p>
														</a>
														<a href="" class="social-info">
															<span class="lnr lnr-sync"></span>
															<p class="hover-text">???????????????</p>
														</a> -->
														<a herf="javascript:goDetail(<c:out value="${index.bookSeq }"/>)" class="social-info">
															<span class="lnr lnr-move"></span>
															<p class="hover-text">????????????</p>
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
				<div class="filter-bar d-flex flex-wrap align-items-center" style="height: 50px;">
					<div class="sorting mr-auto" style="display: none;">
						<select>
							<option value="3">3?????? ??????</option>
							<option value="6">6?????? ??????</option>
							<option value="9">9?????? ??????</option>
						</select>
					</div>
					<div class="pagination" style="display: none;">
						<!-- <a href="#" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
						<a href="#" class="active">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
						<a href="#">6</a>
						<a href="#" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a> -->
					
						<c:if test="${vo.startPage gt vo.pageNumToShow}">
		 	               <a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a>
						</c:if>
						<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
							<c:choose>
								<c:when test="${i.index eq vo.thisPage}">
						           <a class="page-link" href="javascript:goList(${i.index})">${i.index}</a>
								</c:when>
								<c:otherwise>             
						           <a class="page-link" href="javascript:goList(${i.index})">${i.index}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>                
						<c:if test="${vo.endPage ne vo.totalPages}">                
	       			    	<a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a>
						</c:if>
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
	var goUrlOrder = "/order/orderPurchase";
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
	
	goOrder = function(seqValue){
		seq.val(seqValue);
		form.attr("action", goUrlOrder).submit();
	}
	
	$(function(){
		$(document).ready(function(){
			$('select[name=searchOption]').change(function() {
				form.attr("action", goUrlIndex).submit();
			});	
		});
	});
	
	$(function(){
		$(document).ready(function(){
			$('select[name=pageNum]').change(function() {
				form.attr("action", goUrlIndex).submit();
			});	
		});
	});	
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