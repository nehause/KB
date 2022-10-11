<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.kbbook.shop.modules.code.CodeServiceImpl"/>

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
										<div class="user_name"><b><c:out value="${sessName }"/></b> 회원님</div>
									</td>
									<td>
										<span>통합 포인트</span><br>
										<strong><c:out value="${item.accmulate }"/></strong><span><b> p</b></span>
									</td>
								</tr>
							</table>
							<div style="height: 20px;"></div>
							<table class="col-lg-12" style="text-align: center;">
								<caption style="caption-side: top"><h3>나의 주문현황</h3><hr></caption>
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
							<form method="post" id="MROForm" name="MROForm">
								<input type="hidden" id="memberSeq" name="memberSeq" value="<c:out value="${vo.memberSeq }"/>">
								<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
								<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
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
					                        	<c:set var="listCodePayment" value="${CodeServiceImpl.selectListCachedCode('5')}"/>
												<c:set var="listCodePurchaseStatus" value="${CodeServiceImpl.selectListCachedCode('6')}"/>
												<c:choose>
													<c:when test="${fn:length(order) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
														<td class="text-center" colspan="12">최근주문내용 목록이 없습니다.</td>
													</c:when>
													<c:otherwise>
														<c:forEach items="${order}" var="order" varStatus="status">
								                            <tr>
								                                <td>
								                                    <h5><c:out value="${order.purchaseSeq }"/></h5>
								                                </td>
								                                <td>
								                                    <h5>₩<c:out value="${order.priceSum }"/></h5>
								                                </td>
								                                <td>
								                                    <h5><c:out value="${order.purchaseBook }"/></h5>
								                                </td>
								                                <td>
								                                    <h5><c:out value="${order.purchaseCount }"/></h5>
								                                </td>
								                                <td>
								                                	<h5>
									                                	<c:forEach items="${listCodePurchaseStatus}" var="listPurchaseStatus" varStatus="statusPurchaseStatus">
																			<c:if test="${order.purchaseStatus eq listPurchaseStatus.COrder}"><c:out value="${listPurchaseStatus.CNameKor }"/></c:if>
																		</c:forEach>
																	</h5>
								                                </td>
								                            </tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
			                   	 		    </tbody>
			                   			     <tr>
				                            	<td>
												</td>
												<td>	
				                           		</td>
				                           		<td>
					                           		<!-- pagination s -->
													<%@include file="../../../common/dmin/include/pagination.jsp"%>
													<!-- pagination e -->
				                           		</td>
				                           		<td>
				                           		</td>
				                           		<td>
				                           		</td>
				                            </tr>
				                    </table>
				                </div>
			                </form>
						</div>
                        <!-- Start exclusive deal Area -->
                        <h2>관심 상품</h2>
						<section class="exclusive-deal-area">
							<div class="container-fluid">
								<form method="post" id="MRFForm" name="MRFForm">
									<input type="hidden" id="bookSeq" name="bookSeq">
									<div class="row justify-content-center align-items-center">
										<div class="col-lg-12 no-padding exclusive-right">
											<div class="active-exclusive-product-slider">
												<div class="single-exclusive-slider">
													<div class="single-product-slider">
														<div class="container">
															<div class="row">
																<c:choose>
																	<c:when test="${fn:length(favorite) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
																		<!-- single product -->
																		<div class="col-lg-12 col-md-12" style="padding-top: 70px;">
																			<div class="single-product">
																				<div class="product-details">
																					<h6>더 많은 관심 상품을 추가해주세요</h6>
																					<div class="price">
																					</div>
																				</div>
																			</div>
																		</div>
																	</c:when>
																	<c:otherwise>
																		<c:forEach items="${favorite}" var="favorite" varStatus="status" end="2">
																			<!-- single product -->
																			<div class="col-lg-4 col-md-6">
																				<div class="single-product">
																					<a href="javascript:goDetail(<c:out value="${favorite.bookSeq }"/>)"><c:out value="${favorite.bookSign }" /></a>
																					<div class="product-details">
																						<a href="javascript:goDetail(<c:out value="${favorite.bookSeq }"/>)"><h6><c:out value="${favorite.bookName }" /></h6></a>
																						<div class="price">
																							<h6>₩<c:out value="${favorite.bookPrice }" /></h6>
																							<h6 class="l-through">₩<c:out value="${favorite.bookCost }" /></h6>
																						</div>
																					</div>
																				</div>
																			</div>
																		</c:forEach>
																	</c:otherwise>
																</c:choose>
															</div>
														</div>
													</div>
												</div>
												<c:choose>
													<c:when test="${fn:length(favorite) gt 4}"> <!-- length(list)가 0이면 이걸 하고 -->
														 <div class="row">
															<c:forEach items="${favorite}" var="favorite" varStatus="status" begin="3" end="5">
																<!-- single product -->
																<div class="col-lg-4 col-md-6">
																	<div class="single-product">
																		<a href="javascript:goDetail(<c:out value="${favorite.bookSeq }"/>)"><c:out value="${favorite.bookSign }" /></a>
																		<div class="product-details">
																			<a href="javascript:goDetail(<c:out value="${favorite.bookSeq }"/>)"><h6><c:out value="${favorite.bookName }" /></h6></a>
																			<div class="price">
																				<h6>₩<c:out value="${favorite.bookPrice }" /></h6>
																				<h6 class="l-through">₩<c:out value="${favorite.bookCost }" /></h6>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</div>
													</c:when>
													<c:otherwise>
														<div class="row">
															<!-- single product -->
															<div class="col-lg-12 col-md-12" style="padding-top: 70px;">
																<div class="single-product">
																	<div class="product-details">
																		<h6>더 많은 관심 상품을 추가해주세요</h6>
																		<div class="price">
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${fn:length(favorite) gt 7}"> <!-- length(list)가 0이면 이걸 하고 -->
														 <div class="row">
															<c:forEach items="${favorite}" var="favorite" varStatus="status" begin="6" end="8">
																<!-- single product -->
																<div class="col-lg-4 col-md-6">
																	<div class="single-product">
																		<a href="javascript:goDetail(<c:out value="${favorite.bookSeq }"/>)"><c:out value="${favorite.bookSign }" /></a>
																		<div class="product-details">
																			<a href="javascript:goDetail(<c:out value="${favorite.bookSeq }"/>)"><h6><c:out value="${favorite.bookName }" /></h6></a>
																			<div class="price">
																				<h6>₩<c:out value="${favorite.bookPrice }" /></h6>
																				<h6 class="l-through">₩<c:out value="${favorite.bookCost }" /></h6>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</div>
													</c:when>
													<c:otherwise>
														<!-- single product -->
														<div class="row">
															<!-- single product -->
															<div class="col-lg-12 col-md-12" style="padding-top: 70px;">
																<div class="single-product">
																	<div class="product-details">
																		<h6>더 많은 관심 상품을 추가해주세요</h6>
																		<div class="price">
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
									</div>
								</form>
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlDetail = "/book/bookDetail";
	var goUrlList = "/member/memberMyRoom";
	var seq = $("input:hidden[name=bookSeq]");
	var form = $("form[name=MROForm]"); 
	
	goDetail = function(seqValue){
		seq.val(seqValue);
		form.attr("action", goUrlDetail).submit();
	}
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
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

