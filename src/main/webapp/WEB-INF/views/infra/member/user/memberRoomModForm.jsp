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
<!-- 	<header class="header_area sticky-header">
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
            	<!-- myRoomSidebar Start -->
     			<%@include file="../../../common/user/include/myRoomSidebar.jsp"%>
     			<!-- myRoomSidebar End -->
            
          	  <!-- <div class="col-lg-3">
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
                	<form name="memberModForm" method="get" action="/resources/memberRoomForm.html" id="memberModForm">
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
						<br>
	                    <h3><b>회원정보수정</b></h3>
	                    <hr>
	                    <caption style="caption-side: top;"><h5>필수입력사항</h5></caption>
	                     <table class="table col-lg-12">
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>아이디</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="modId" name="modId" value="usersid" disabled>
	                    		</td>
	                    		<td class="col-lg-2">
	                    		</td>
	                    		<td class="col-lg-4">
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>이름</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="modName" name="modName" value="회원이름" disabled>
	                    		</td>
	                    		<td class="col-lg-2">
	                    		</td>
	                    		<td class="col-lg-4">
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>생년월일</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="modDob" name="modDob" value="19990101" disabled>
	                    		</td>
	                    		<td class="col-lg-2">
	                    			<span>성별</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<div class="col-lg-3" style="display:inline;">
             			 				<input class="form-check-input" type="radio" id="modGenderWoman" name="modGender" value="woman" disabled>
	                               		<label class="form-check-label" for="modGenderWoman">여성</label>
                              		</div>
                              		<div class="offset-4" style="display:inline;">	
                              			<input class="form-check-input" type="radio" id="modGenderman" name="modGender" value="man" checked disabled>
	                               		<label class="form-check-label" for="modGenderman">남성</label>
	                            	</div>
	                            </td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>휴대폰번호</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="modNumber" name="modNumber" value="010-1234-5678">
	                    		</td>
	                    		<td class="col-lg-2">
	                    			<span>전화번호</span>
	                    		</td>
	                    		<td class="col-lg-4">
               			 			<input type="text" class="form-control" id="modHome" name="modHome" value="02-123-4567">
	                            </td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>Email</span>
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<input type="text" class="form-control" id="modEmailFirst" name="modEmailFirst" value="userEamil">
	                    		</td>
	                    		<td class="col-lg-1" style="text-align: center;">
	                    			<span> @ </span>
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<input type="text" class="form-control" id="regEmailLast" name="modEmailLast" value="Email.com">
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<select class="country_select" id="modEmailLastSelect" name="modEmailLastSelect" onchange="selectEmail();">
	                                    <option value="">직접입력</option>
	                                    <option value="naver.com">네이버</option>
	                                    <option value="gmail.com">구글</option>
	                                    <option value="kakao.com">카카오</option>
	                                </select>
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>마케팅(광고)<br>수신동의 여부</span>
	                    		</td>
	                    		<td class="col-lg-10">
		                            <div class="col-lg-4" style="display: inline; text-align: left">
	                                    <input type="checkbox" id="modAdAllReceive" name="modAdAllReceive" value="modAdAllReceive" onclick="selectAll(this);">
	                                    <label for="modAdAllReceive" style="font-weight: bolder;">광고 전체 수신 동의</label>
		                            </div>
	                            	<div style="height: 20px;"></div>
		                            <div class="col-lg-12">
		                                <div class="col-lg-4" style="display: inline;">
		                                    <input type="checkbox" id="modAdEmailReceive" name="modAdReceive" onclick="checkSelectAll();" checked>
		                                    <label for="modAdEmailReceive">이메일 수신</label>
		                                </div>
		                                <div class="col-lg-4" style="display: inline;">
		                                    <input type="checkbox" id="modAdKakaoReceive" name="modAdReceive" onclick="checkSelectAll();">
		                                    <label for="modAdKakaoReceive">카카오톡 수신</label>
		                                </div>
		                                <div class="col-lg-4" style="display: inline;">
		                                    <input type="checkbox" id="modAdSmsReceive" name="modAdReceive" onclick="checkSelectAll();" checked>
		                                    <label for="modAdSmsReceive">SMS 수신 동의</label>
		                                </div>
		                            </div>
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class=col-lg-12>
	                    		</td>
	                    	</tr>
	                    </table>
	                    <div style="height: 10px;"></div>
	                    <caption style="caption-side: top;"><h5>선택입력사항</h5></caption>
	                    <table class="table col-lg-12">
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>기본주소[집]</span>
	                    		</td>
	                    		<td class="col-lg-10">
	                    			<div class="row">
	                    				<div class="col-lg-4">
	                    					<input type="text" class="form-control" id="modZipCode" name="modZipCode" value="12345">
	                    				</div>
	                    				<div class="col-lg-3">
	                    					<input type="button" class="form-control genric-btn primary" id="modAddressSearch" name="modAddressSearch" value="주소검색">
	                    				</div>
	                    				<div class="col-lg-6">
	                    					<input type="text" class="form-control" id="modAddress" name="modAddress" value="어떤시 어떤구 어떤로12길 34-5">
	                    				</div>
	                    				<div class="col-lg-6">
	                    					<input type="text" class="form-control" id="modAddress" name="modAddress" value="1234동 5678호">
	                    				</div>
	                    				<div class="col-lg-12">
	                    					<br>
	                    					<ul>
	                    						<li>위의 주소를 수정 하면 주소록의 기본 주소도 변경됩니다.</li>
												<li>기본 주소는 회원정보관리>나의주소록에서 설정 하실 수 있습니다.</li>
												<li>본 주소는 서비스, 경품 배송을 위한 목적 등 회원관리를 위해 이용/저장되며, 회원탈퇴 시 삭제됩니다.</li>
	                    					</ul>
	                    				</div>
                    				</div>
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>개인정보 <br> 유효기간</span>
	                    		</td>
	                    		<td class="col-lg-10">
	                    			<div class="col-lg-3 form-group" style="display: inline;">
	                                    <input type="radio" id="modPrivacy1" name="modPrivacy" value="1">
	                                    <label for="modPrivacy1">1년</label>
		                            </div>    
		                            <div class="col-lg-3 form-group" style="display: inline;">
	                                    <input type="radio" id="modPrivacy2" name="modPrivacy" value="2">
	                                    <label for="modPrivacy2">3년</label>
		                            </div>
		                            <div class="col-lg-3 form-group" style="display: inline;">
	                                    <input type="radio" id="modPrivacy3" name="modPrivacy" value="3" checked>
                                   		<label for="modPrivacy3">5년</label>
		                            </div>
		                            <div class="col-lg-3 form-group" style="display: inline;">
                                	    <input type="radio" id="modPrivacy4" name="modPrivacy" value="4">
	                                    <label for="modPrivacy4">탈퇴시까지</label>
		                            </div>
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-12">
	                    		</td>
	                    	</tr>
	                    	<caption style="caption-side: bottom; float:right;">
						   		<button type="button" class="genric-btn primary" id="modFormSubmit" onclick="modSubmit();">
						   			<i class="fa-solid fa-pencil"></i> 수정
						    	</button>
						    	<button type="button" class="genric-btn danger" id="modFormCancel" data-toggle="modal" data-target="#modCancelModal">
						    		<i class="fa-solid fa-xmark"></i> 취소
						    	</button>
							</caption>
	                    </table>
                    </form>
                </div>
            </div>
        </div>
    </section>
	<!-- end product Area -->
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	
	<!-- start modal area -->
	<div class="modal fade" id="modCancelModal" tabindex="-1" aria-labelledby="modCancelModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="modCancelModalLabel">돌아가시겠습니까?</h5>
	        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
	      </div>
	      <div class="modal-body">
	        <span>지금까지 기입한 정보가 전부 초기화 됩니다. 돌아가시겠습니까?</span>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
	        <button type="button" class="genric-btn danger" onclick="modCancel();">취소</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- end modal area -->
	
	<script type="text/javascript">
	function modCancel() {
		location.href='memberRoomForm.html';
	}
	
	function modSubmit() {
		document.getElementById("memberModForm").submit();
	}
	function selectEmail() {
		document.memberModForm.modEmailLast.value = document.memberModForm.modEmailLastSelect.value
		
	}
	function checkSelectAll()  {

		const checkboxes = document.querySelectorAll('input[name="modAdReceive"]');

		const checked = document.querySelectorAll('input[name="modAdReceive"]:checked');

		const selectAll = document.querySelector('input[name="modAdAllReceive"]');
		  
		if(checkboxes.length === checked.length)  {
		  selectAll.checked = true;
		}else {
		  selectAll.checked = false;
		}
	}
	function selectAll(selectAll)  {
		const checkboxes = document.getElementsByName('modAdReceive');
		
		checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
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