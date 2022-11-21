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
	<style>
	.table td {
		vertical-align: middle;
	}
	
	</style>
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
						<a href="/member/memberMyRoom">마이룸<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">주문/배송 조회</a>
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
                    	<form id="OUVForm" name="OUVForm" method="post">
                    		<input type="hidden" id="bookSeq" name="bookSeq">
							<div style="height: 20px;"></div>
							<table class="col-lg-12" style="text-align: center;">
								<caption style="caption-side: top"><h3>주문/배송 조회 상세</h3><hr></caption>
								<tbody style="background-color: #f0f0f0; height: 40px;">
								<tr style="border-left: thick;">
									<td style="width: 200px;">
										<span>주문일자 : </span><fmt:formatDate value="${item.time}" type="DATE" pattern="yyyy-MM-dd"/>
									</td>
									<td style="width: 120px;">
										<span>주문번호 : </span><span><c:out value="${item.purchaseSeq }"/></span>
									</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								</tbody>
							</table>
							<div style="height:50px;"></div>
							<div class="table-responsive">
			                    <table class="table" style="text-align: center;">
		                        	<caption style="caption-side: top"><h4>배송</h4></caption>
		                        	<c:forEach items="${purchaseBook}" var="purchaseBook" varStatus="status">
			                        	<tr>
				                        	<td>
				                        		<div class="d-flex">
		                                            <img src="<c:out value="${purchaseBook.path }"/><c:out value="${purchaseBook.uuidName }"/>" alt="" style="width: 100px; height: 150px;">
		                                        </div>
				                        	</td>
				                        	<td>
			                        			<span style="font-weight: bolder; cursor: pointer;" onclick="location.href='javascript:goDetail(<c:out value="${purchaseBook.bookSeq }"/>)'">
			                        				<c:out value="${purchaseBook.name }"/>
		                        				</span>
				                        	</td>
				                        	<td>
				                        		수량 : <c:out value="${purchaseBook.count }"/>
				                        	</td>
				                        	<td>
				                        		금액 : <c:out value="${purchaseBook.price}"/>
				                        	</td>
				                        	<td>
				                        		<c:set var="listPurchaseStatus" value="${CodeServiceImpl.selectListCachedCode('6')}"/>
					                        	<c:forEach items="${listPurchaseStatus}" var="listPurchaseStatus" varStatus="statusPurchaseStatus">
													<c:if test="${item.purchaseStatus eq listPurchaseStatus.COrder}"><c:out value="${listPurchaseStatus.CNameKor }"/></c:if>
												</c:forEach>
				                        	</td>
			                        	</tr>
	                   	 		    </c:forEach>
			                    </table>
			                </div>
			                <div style="height:50px;"></div>
							<div class="table-responsive">
			                    <table class="table" style="text-align: center">
			                        <caption style="caption-side: top"><h3>배송 정보</h3></caption>
		                        	<tr>
	                            		<td style="vertical-align: top;"><span style="font-weight: bolder;">기본 정보</span></td>
	                            		<td>
	                            			<p style="font-weight: bolder;"><c:out value="${item.memberName }"/></span> / <span><c:out value="${item.phone }"/></p>
	                            			<p>[<c:out value="${item.zip }"/>]</span> <span><c:out value="${item.address1 }"/> , </span><span><c:out value="${item.address2 }"/></p>
	                            		</td>
	                            	</tr>
			                    </table>
			                </div>
			                <div class="table-responsive">
			                    <table class="table" style="text-align: center">
			                        <caption style="caption-side: top"><h3>결제 정보</h3></caption>
		                        	<tr>
		                        		<td>
	                            			<span style="font-weight: bolder;">주문 금액 : <c:out value="${item.priceSum }"/></span>
	                            		</td>
	                            		<td>
	                            			<span style="font-weight: bolder;">결제 금액 : <c:out value="${item.priceSum }"/></span>
	                            		</td>
	                            	</tr>
			                    </table>
			                    <hr>
			                </div>
			                <div style="height: 50px;"></div>
			                <div style="text-align: center">
			                	<button type="button" style="width: 200px; height: 50px;" class="genric-btn primary" onclick="/member/memberMyRoom">마이룸</button>
			                </div>		                
						</form>
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
	var form = $("form[name=OUVForm]");
	
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

</html>
