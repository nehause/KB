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
		.textCenter{
			text-align: center;
		}
		.allCenter{
			text-align: center;
			justify-content: center; 
			align-items: center;
		}
		.marginSpace{
			margin-top: 10px;
		    margin-bottom: 10px;
		}
	</style>
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
						<a href="main.html">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="memberRoomForm.html">마이룸<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">회원정보수정</a>
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
            	<div class="col-lg-3">
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
                </div>
                <div class="col-lg-9">
                	<form name="memberModPasswordForm" method="get" action="/resources/memberRoomForm.html" id="memberModPasswordForm">
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
	                    <h3><b>나의 주소록</b></h3>
	                    <div class="border row" style="background-color: #F0F0F0;">
	                    	<div class="col-lg-2" style="margin:10px;">
	                    		<span>입력된 주소 </span> <span><b>1개</b></span>
	                    	</div>
	                    	<div class="col-lg-3 offset-6">
	                    		<button type="button" class="genric-btn default" id="regTrasport" data-toggle="modal" data-target="#regTransportModal"> 
                   					<i class="fa-solid fa-caret-right"></i> 새로운 주소 추가
                				</button>
                			</div>
	                    </div>
						<div style="height: 10px;"></div>
	                    <table class="table col-lg-12" style="text-align:center; vertical-align:middle;">
	                    	<tr class="row">
	                    		<th class="col-lg-1">
	                    			<span>구분</span>
	                    		</th>
	                    		<th class="col-lg-1">
	                    			<span>이름</span>
	                    		</th>
	                    		<th class="col-lg-3">
	                    			<span>전화번호</span><br><span>[휴대전화번호]</span>
	                    		</th>
	                    		<th class="col-lg-6">
	                    			<span>주소</span>
	                    		</th>
	                    		<th class="col-lg-1">
	                    			<span>선택</span>
	                    		</th>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-1">
	                    			<span id="baseTransfort"><b>기본</b></span><br><span>집</span>
	                    		</td>
	                    		<td class="col-lg-1">
	                    			<span>이용자</span>
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<span>010-1234-5678</span>
	                    		</td>
	                    		<td class="col-lg-6">
	                    			<span>어떤시 어떤구 어떤어떤로 12길 34-5, 6789동 0123호</span>
	                    		</td>
	                    		<td class="col-lg-1">
	                    			<input type="radio" id="transport1" name="transportCheck">
	                    		</td>
	                    	</tr>
	                    	<tr>
	                    		
	                    	</tr>
	                    	<tr>
	                    		
	                    	</tr>
	                    	<tr class="row" style="background-color: #F0F0F0;">
                           		<td class="col-lg-12">
	                           		<a href="#"><b><i class="fa-solid fa-angles-left"></i></b></a>
	                           		<a href="#"><b><i class="fa-solid fa-angle-left"></i></b></a>
	                           		<a href="#"><span style="color:gray">1</span></a>
	                           		<a href="#"><b><i class="fa-solid fa-angle-right"></i></b></a>
	                           		<a href="#"><b><i class="fa-solid fa-angles-right"></i></b></a>
                           		</td>
                            </tr>
                            <tr class="row">
                            	<td class="col-lg-12">
                            	</td>
                            </tr>
	                    </table>
	                    <button type="button" class="genric-btn default" style="float:left;" id="modPasswordFormSubmit" onclick="modPasswordSubmit();"> 
                   			<i class="fa-solid fa-caret-right"></i> 기본주소 설정
                		</button>
                   		<button type="button" class="genric-btn primary col-lg-2" style="float:right;" id="modTransport" data-toggle="modal" data-target="#modTransportModal"> 
                   			<i class="fa-solid fa-pencil"></i> 수정
                		</button>
                		<button type="button" class="genric-btn danger col-lg-2" style="float:right; margin-right:10px;" data-toggle="modal" data-target="#delectTransportModal" id="modPasswordFormSubmit" onclick="modPasswordSubmit();"> 
                   			<i class="fa-solid fa-trash-can"></i> 삭제
                		</button>
                    </form>
                    <div style="height: 80px;"></div>
                   	<div class="border">
                   		<div style="background-color: #F0F0F0;">
                   			<h4 style="padding: 10px;"><b><i class="fa-solid fa-circle-exclamation"></i></b> 주소록 안내 </h4>
                   		</div>
                   		<div>
                   			<ul style="margin: 10px; padding:10px;">
                   				<li>기본 주소는 집 또는 직장 주소 중에서만 설정 가능하며, 기타로 구분되어 있는 주소는 설정 하실 수 없습니다.</li>
								<li>기본 주소는 수정 가능하며, 삭제 할 수 없습니다.</li>
								<li>기본 주소로 설정 하시면 회원정보 수정의 주소도 같이 변경되며, 주문/결제시 배송지정보에서 회원정보 동일에 적용됩니다.</li>
								<li>등록된 주소의 구분(집, 직장, 기타) 수정은 불가합니다.</li>
								<li>집과 직장 주소는 각 1개씩만 등록 가능하며, 기타주소는 최대 99개까지 등록할수 있습니다.</li>
								<li>집과 직장 주소가 이미 1개씩 등록된 경우, 추가 하실 수 없으며 해당 주소를 선택하시어 수정 바랍니다.</li>
                   			</ul>
                   		</div>
                    </div>
                    <div style="height: 50px;"></div>
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
	
	<!-- start new Transport modal area -->
	<form name="regTransportForm" method="get" action="memberTransport.html" id="addTransportForm">
		<div class="modal fade" id="regTransportModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="regTransportModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="regTransportModalLabel">새로운 주소 입력</h5>
		        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
		      </div>
		      <div class="modal-body">
		        <div class="col-lg-12">
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>이름</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4" id="regTransportName" name="regTransportName">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 allCenter">
		        			<b>주소</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4" style="display: inline;" id="regTransportZipCode" name="regTransportZipCode">
			        		<input type="button" class="form-control genric-btn primary col-lg-4" id="regTransportSearch" name="regTransportAddressSearch" value="주소검색">
		        			<input type="text" class="form-control" id="regTransportAddress" name="regTransportAddress">
		        			<input type="text" class="form-control" id="regTransportAddressDetail" name="regTransportAddressDetail">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>전화번호</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<select class="country_select col-lg-3" style="display: inline;" id="regTransportHomeStart" name="regTransportHomeStart">
                                <option value=" 02">02</option>
                                <option value="031">031</option>
                                <option value="032">032</option>
                                <option value="033">033</option>
                            </select>
                            <span class="col-lg-1"> - </span>
                            <input type="text" class="form-control col-lg-3" style="display: inline;" id="regTransportHomeCenter" name="regTransportHomeCenter">
                            <span class="col-lg-1"> - </span>
			        		<input type="text" class="form-control col-lg-3" style="display: inline;" id="regTransportHomeEnd" name="regTransportHomeEnd">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>핸드폰</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<select class="country_select col-lg-3" id="regTransportNumberStart" name="regTransportNumberStart">
                                 <option value="010">010</option>
                                 <option value="011">011</option>
                                 <option value="017">017</option>
                                 <option value="019">019</option>
                             </select>
                             <span class="col-lg-1"> - </span>
                            <input type="text" class="form-control col-lg-3" style="display: inline;" id="regTransportNumberCenter" name="regTransportNumberCenter">
                            <span class="col-lg-1"> - </span>
			        		<input type="text" class="form-control col-lg-3" style="display: inline;" id="regTransportNumberEnd" name="regTransportNumberEnd">
		        		</div>
		        	</div>
	        	</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
		        <button type="button" class="genric-btn primary" onclick="regTransportSubmit();">등록</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form>
	<!-- end new Transport modal area -->
	
	<!-- start new Transport modal area -->
	<form name="modTransportForm" method="get" action="memberTransport.html" id="modTransportForm">
		<div class="modal fade" id="modTransportModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="modTransportModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="modTransportModalLabel">주소 수정</h5>
		        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
		      </div>
		      <div class="modal-body">
		        <div class="col-lg-12">
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>이름</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4" id="modTransportName" name="modTransportName">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 allCenter">
		        			<b>주소</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4" style="display: inline;" id="modTransportZipCode" name="modTransportZipCode">
			        		<input type="button" class="form-control genric-btn primary col-lg-4" id="modTransportSearch" name="modTransportAddressSearch" value="주소검색">
		        			<input type="text" class="form-control" id="modTransportAddress" name="modTransportAddress">
		        			<input type="text" class="form-control" id="modTransportAddressDetail" name="modTransportAddressDetail">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>전화번호</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<select class="country_select col-lg-3" style="display: inline;" id="modTransportHomeStart" name="modTransportHomeStart">
                                <option value=" 02">02</option>
                                <option value="031">031</option>
                                <option value="032">032</option>
                                <option value="033">033</option>
                            </select>
                            <span class="col-lg-1"> - </span>
                            <input type="text" class="form-control col-lg-3" style="display: inline;" id="modTransportHomeCenter" name="modTransportHomeCenter">
                            <span class="col-lg-1"> - </span>
			        		<input type="text" class="form-control col-lg-3" style="display: inline;" id="modTransportHomeEnd" name="modTransportHomeEnd">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>핸드폰</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<select class="country_select col-lg-3" id="modTransportNumberStart" name="modTransportNumberStart">
                                 <option value="010">010</option>
                                 <option value="011">011</option>
                                 <option value="017">017</option>
                                 <option value="019">019</option>
                             </select>
                             <span class="col-lg-1"> - </span>
                            <input type="text" class="form-control col-lg-3" style="display: inline;" id="modTransportNumberCenter" name="modTransportNumberCenter">
                            <span class="col-lg-1"> - </span>
			        		<input type="text" class="form-control col-lg-3" style="display: inline;" id="modTransportNumberEnd" name="modTransportNumberEnd">
		        		</div>
		        	</div>
	        	</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
		        <button type="button" class="genric-btn primary" onclick="modTransportSubmit();">등록</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form>
	<!-- end new Transport modal area -->
	
	<!-- start modal area -->
	<div class="modal fade" id="delectTransportModal" tabindex="-1" aria-labelledby="delectTransportModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="delectTransportModalLabel">삭제하시겠습니까?</h5>
	        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
	      </div>
	      <div class="modal-body">
	        <span>선택된 주소 정보가 삭제됩니다. 삭제하시겠습니까?</span>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
	        <button type="button" class="genric-btn danger" onclick="delectTransport();">삭제</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- end modal area -->
	
	<script type="text/javascript">
		function modCheckSubmit() {
				document.getElementById("memberModCheckForm").submit();
			}
		function regTransportSubmit() {
			document.getElementById("regTransportForm").submit();
		}
		function modTransportSubmit() {
			document.getElementById("modTransportForm").submit();
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