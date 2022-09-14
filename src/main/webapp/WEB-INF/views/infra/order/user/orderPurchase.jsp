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
	<style>
		#paymentDiv {
			position: absolute;
			padding: 0px;
			margin: 0pt;
			right: 0px;
			top: 250px;
		}
	</style>
</head>
<body>

	<!-- Start Header Area -->
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
	</header>
	<!-- End Header Area -->
	
	 <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>주문/결제</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">메인<span class="lnr lnr-arrow-right"></span></a>
                        <a href="/resources/book/bookView.html">주문/결제</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Checkout Area =================-->
    <section class="checkout_area section_gap">
        <div class="container">
            <div class="billing_details">
                <div class="row">
                    <div class="col-lg-8">
                        <h3>배송 정보</h3>
                        <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                            <div class="col-md-5 form-group p_star">
                                <input type="text" class="form-control" id="orderName" name="orderName" placeholder="이름*">
                            </div>
                            <div class="col-md-3">
                                <input type="button" class="form-control genric-btn primary" data-toggle="modal" data-target="#orderTransportChangeModal" id="orderTransportChange" name="orderTransportChange" value="배송지 변경">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderNumber" name="orderNumber" placeholder="휴대폰 전화번호 (ex:01012345678)*" maxlength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderHome" name="orderHome" placeholder="집 전화번호 (ex:021234567)*" maxlength="9" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
                            </div>
                            <div class="col-md-5 form-group">
                                <input type="text" class="form-control" id="orderZip" name="orderZip" placeholder="우편 번호">
                            </div>
                            <div class="col-md-3">
                                <input type="button" class="form-control genric-btn primary" id="orderPostSearch" name="orderPostSearch" value="주소 검색">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderAddress" name="orderAddress" placeholder="주소">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderAddressDetail" name="orderAddressDetail" placeholder="상세 주소">
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <input type="checkbox" id="orderSaveShipping" name="orderSaveShipping">
                                    <label for="orderSaveShipping">배송지를 저장하시겠습니까?</label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group" style="height: 30px;"></div>
                        </form>
                        <div class="cart_inner">
			                <div class="table-responsive">
			                	<h1>주문 상품</h1>
			                    <table class="table">
			                        <thead>
			                            <tr>
			                                <th scope="col">상품 정보</th>
			                                <th scope="col">가격</th>
			                                <th scope="col">개수</th>
			                                <th scope="col">총합</th>
			                            </tr>
			                        </thead>
			                        <tbody>
			                            <tr>
			                                <td>
			                                    <div class="media">
			                                        <div class="d-flex">
			                                            <img src="/resources/images/product/pb1.png" alt="" style="width: 150px;">
			                                        </div>
			                                        <div class="media-body">
			                                            <p style="width: 240px;">[국내도서] 역행자</p>
			                                        </div>
			                                    </div>
			                                </td>
			                                <td>
			                                    <h5>₩15,750</h5>
			                                </td>
			                                <td>
			                                    <div class="product_count">
			                                        <input type="text" name="orderQuantity1" id="orderQuantity1" maxlength="12" value="1" title="Quantity:"
			                                            class="input-text qty">
			                                        <button onclick="var result = document.getElementById('orderQuantity1'); var orderQuantity1 = result.value; if( !isNaN( orderQuantity1 )) result.value++;;"
			                                            class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
			                                        <button onclick="var result = document.getElementById('orderQuantity1'); var orderQuantity1 = result.value; if( !isNaN( orderQuantity1 ) && orderQuantity1 > 1 ) result.value--;"
			                                            class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
			                                    </div>
			                                </td>
			                                <td>
			                                    <h5>₩15,750</h5>
			                                </td>
			                            </tr>
			                            <tr>
			                                <td>
			
			                                </td>
			                                <td>
			
			                                </td>
			                                <td>
			                                    <h5>합계</h5>
			                                </td>
			                                <td>
			                                    <h5>₩15,750</h5>
			                                </td>
			                            </tr>
			                        </tbody>
			                    </table>
			                </div>
			            </div>
		            </div>
                 	<div class="col-lg-4">
                        <div class="order_box">
                            <h2>주문 내역</h2>
                            <ul class="list">
                                <li><a href="#">상품 <span>총합</span></a></li>
                                <li><a href="#">[국내도서] 역행자 <span class="middle">x 01</span> <span class="last">₩15,750</span></a></li><!-- 
                                <li><a href="#">Fresh Tomatoes <span class="middle">x 02</span> <span class="last">$720.00</span></a></li>
                                <li><a href="#">Fresh Brocoli <span class="middle">x 02</span> <span class="last">$720.00</span></a></li> -->
                            </ul>
                            <ul class="list list_2">
                                <li><a href="#">상품 금액 <span>₩15,750</span></a></li>
                                <li><a href="#">배송비 <span>무료</span></a></li>
                                <li><a href="#">결제 예정 금액 <span>₩15,750</span></a></li>
                            </ul>
                            <div class="payment_item">
                                <div class="radion_btn">
                                    <input type="radio" id="f-option5" name="selector">
                                    <label for="f-option5">카드 결제수단</label>
                                    <div class="check"></div>
                                </div>
                                <p>상점 이름, 상점 거리, 상점 타운, 상점 주/군, 상점 우편번호로 수표를 보내주십시오.</p>
                            </div>
                            <div class="payment_item active">
                                <div class="radion_btn">
                                    <input type="radio" id="f-option6" name="selector">
                                    <label for="f-option6">Paypal </label>
                                    <img src="/resources/template/karma/img/product/card.jpg" alt="">
                                    <div class="check"></div>
                                </div>
                                <p>페이팔을 통한 결제 PayPal이 없는 경우 신용 카드로 결제할 수 있습니다.</p>
                            </div>
                            <div class="creat_account">
                                <input type="checkbox" id="f-option4" name="selector">
                                <label for="f-option4">나는 주문 상태를 숙지하였으며 </label>
                                <a href="#">이에 동의함*</a>
                            </div>
                            <a class="primary-btn" href="orderFin.html">결제하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Checkout Area =================-->
		
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
	
	<!-- start modal area -->
	<section class="product_description_area">
	<div class="modal fade" id="orderTransportChangeModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="orderTransportChangeModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<ul class="nav nav-tabs col-lg-12" id="myTab" role="tablist">
						<li class="col-lg-10">
							<h3 style="margin-top: 10px; margin-bottom: 10px; text-align: left;">주소록</h3>
						</li>
						<li>
							<button type="button" class="border border-0" style="vertical-align: middle; background-color: #E8F0F2;" data-dismiss="modal" aria-label="Close"><i class="fa-solid fa-x fa-2x"></i></button>
						</li>
						<li class="nav-item col-lg-5" style="margin:0px;">
							<a class="nav-link active" id="home-tab" data-toggle="tab" href="#orderTransportBook" role="tab" aria-controls="findId" aria-selected="true">주소록</a>
						</li>
						<li class="nav-item col-lg-5">
							<a class="nav-link" id="writer-tab" data-toggle="tab" href="#orderTransportLatest" role="tab" aria-controls="findPassword" aria-selected="false">최근 배송지</a>
						</li>
					</ul>
				</div>
				<div class="modal-body">
					<form name="findIdPasswordForm" method="get" action="/resources/loginForm.html" id="findIdPasswordForm">
						<div class="tab-content" id="findIDPasswordContent">
							<div class="tab-pane fade show active" id="orderTransportBook" role="tabpanel" aria-labelledby="orderTransportBookTab">
								
							</div>
							<div class="tab-pane fade" id="orderTransportLatest" role="tabpanel" aria-labelledby="orderTransportLatestTab">
								
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<div style="text-align: center;">
						<a href="#"><b><i class="fa-solid fa-angles-left"></i></b></a>
                   		<a href="#"><b><i class="fa-solid fa-angle-left"></i></b></a>
                   		<a href="#"><b><span>1</span></b></a>
            		 	<a href="#"><b><i class="fa-solid fa-angle-right"></i></b></a>
                   		<a href="#"><b><i class="fa-solid fa-angles-right"></i></b></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- end modal area -->

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