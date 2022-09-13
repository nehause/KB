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

	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="main.html" style="font-family: 'Pacifico', cursive; color: orange;">JHJ</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="main.html">메인</a></li>
							<li class="nav-item active"><a class="nav-link" href="loginForm.html">로그인</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">국내도서</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/resources/book/bookList.html">책 목록</a></li>
									<li class="nav-item"><a class="nav-link" href="/resources/book/bookView.html">책 상세</a></li>
								</ul>
							</li>
							<!-- <li class="nav-item"><a class="nav-link" href="memberRoomForm.html">마이룸</a></li> -->
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">마이룸</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="memberRoomForm.html">주문/배송 조회</a></li>
									<li class="nav-item"><a class="nav-link" href="memberModCheckForm.html">회원정보 수정</a></li>
									<li class="nav-item"><a class="nav-link" href="memberModPasswordForm.html">비밀번호 변경</a></li>
									<li class="nav-item"><a class="nav-link" href="memberTransport.html">나의 주소록</a></li>
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
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>회원가입</h1>
					<nav class="d-flex align-items-center">
						<a href="main.html">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="loginForm.html">회원가입</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<form name="memberRegForm" method="get" action="/resources/loginForm.html" id="memberRegForm">
		<section class="memberRegFormArea section_gap">
			<div class="billing_details">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h3>회원가입</h3>
                        <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                        	<div class="row mb-3">
	                            <div class="col-md-4 gy-3 form-group p_star">
	                                <input type="text" class="form-control" id="regName" name="regName" placeholder="이름*">
	                            </div>
	                            <div class="col-md-1 gy-3 form-group">
	                            	<span class="align-self-center">성별</span>
	                            </div>
	                            <div class="col-md-2 gy-3 form-group">
	                                <div class="adReceive">
	                                    <input type="radio" id="regGenderMan" name="regGender" value="man">
	                                    <label for="regGenderMan">남성</label>
	                                </div>
	                            </div>    
	                            <div class="col-md-2 gy-3 form-group">
	                                <div class="adReceive">
	                                    <input type="radio" id="regGenderWoman" name="regGender" value="woman">
	                                    <label for="regGenderWoman">여성</label>
	                                </div>
	                            </div>
                            </div>
                            <div class="row mb-3">
                            	<div class="col-md-4 form-group p_star">
	                                <input type="text" class="form-control" id="regId" name="regId" placeholder="아이디*">
	                            </div>
	                            <div class="col-md-2 form-group">
        	                        <input type="button" class="form-control genric-btn primary" id="regIdOverlap" name="regIdOverlap" value="중복확인">
    	                        </div>
                            </div>
                            <div class="row mb-3">
                            	<div class="col-md-4 form-group p_star">
	                                <input type="text" class="form-control" id="regUserName" name="regUserName" placeholder="닉네임*">
	                            </div>
	                            <div class="col-md-2 form-group">
        	                        <input type="button" class="form-control genric-btn primary" id="regUserNameOverlap" name="regUserNameOverlap" value="중복확인">
    	                        </div>
                            </div>
                            <div class="row">
	                            <div class="col-md-5 form-group p_star">
	                                <input type="password" class="form-control" id="regPassword" name="regPassword" placeholder="비밀번호*">
	                            </div>
	                            <div class="col-md-5 form-group p_star">
	                                <input type="password" class="form-control" id="regPasswordCheck" name="regPasswordCheck" placeholder="비밀번호 확인*" onkeyup="regPasswordCk();">
	                                <label><div name="checkWord" id="checkWord" style="display: none; color:red;">동일한 암호를 입력하세요.</div></label>
	                            </div>
                            </div>
                            <div class="row mb-3">
                            	<div class="col-md-5 form-group p_star">
	                                <input type="text" class="form-control" id="regBirth" name="regBirth" placeholder="생년월일 (ex:19990506)*" maxlength="8" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
	                       
	                            </div>
	                            <div class="col-md-5 form-group p_star">
	                                <input type="text" class="form-control" id="regPhone" name="regPhone" placeholder="휴대폰번호 (ex:01012345678)*" maxlength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
	                            </div>
                            </div>
                            <div class="row mb-3">
	                            <div class="col-md-4 form-group p_star">
	                                <input type="text" class="form-control" id="regEmailFirst" name="regEmailFirst" placeholder="이메일*">
	                            </div>
	                            <span class="align-self-center" style="margin-bottom: 20px"> @ </span>
	                            <div class="col-md-4 form-group p_star">
	                                <input type="text" class="form-control" id="regEmailLast" name="regEmailLast" placeholder="직접입력">
	                            </div>
	                            <div class="col-md-3 form-group p_star">
	                                <select class="country_select" id="regEmailLastSelect" name="regEmailLastSelect" onchange="selectEmail();">
	                                    <option value="">직접입력</option>
	                                    <option value="naver.com">네이버</option>
	                                    <option value="gmail.com">구글</option>
	                                    <option value="kakao.com">카카오</option>
	                                </select>
	                            </div>
                            </div>
                            <div class="row">
	                            <div class="col-md-3 form-group">
	                                <input type="text" class="form-control" id="zipCode" name="zipCode" placeholder="우편번호">
	                           	</div>
	                           	<div class="col-md-2 form-group">
	                                <input type="button" class="form-control genric-btn primary" id="regAddressSearch" name="regAddressSearch" value="주소검색">
	                            </div>
	                            </div>
	                            <div class="row">
	                            <div class="col-md-7 form-group p_star">
	                                <input type="text" class="form-control" id="regAddress" name="regAddress" placeholder="주소">
	                            </div>
	                            <div class="col-md-7 form-group p_star">
	                                <input type="text" class="form-control" id="regAddressDetail" name="regAddressDetail" placeholder="상세주소">
	                            </div>
                            </div>
                            <div class="row" style="height: 30px;"></div>
                            <div class="row mb-5">
	                            <div class="col-md-12 form-group">
	                                <div class="regPrivacy">
	                                    <span class="align-self-center" style="font-weight: bolder;">개인정보 유효기간</span>
	                                </div>
	                            </div>
	                            <div class="col-md-2 form-group">
	                                <div class="regPrivacy">
	                                    <input type="radio" id="regPrivacy1" name="regPrivacy" value="1">
	                                    <label for="regPrivacy1">1년</label>
	                                </div>
	                            </div>    
	                            <div class="col-md-2 form-group">
	                                <div class="regPrivacy">
	                                    <input type="radio" id="regPrivacy2" name="regPrivacy" value="2">
	                                    <label for="regPrivacy2">3년</label>
	                                </div>
	                            </div>
	                            <div class="col-md-2 form-group">
	                                <div class="regPrivacy">
	                                    <input type="radio" id="regPrivacy3" name="regPrivacy" value="3">
	                                    <label for="regPrivacy3">5년</label>
	                                </div>
	                            </div>
	                            <div class="col-md-2 form-group">
	                                <div class="regPrivacy">
	                                    <input type="radio" id="regPrivacy4" name="regPrivacy" value="4">
	                                    <label for="regPrivacy4">탈퇴시까지</label>
	                                </div>
	                            </div>
	                        </div>
                            <div class="row mb-5">
	                            <div class="col-md-12 form-group">
	                                <div class="adReceive">
	                                    <input type="checkbox" id="adAllReceive" name="adAllReceive" value="adAllReceive" onclick="selectAll(this);">
	                                    <label for="adAllReceive" style="font-weight: bolder;">광고 전체 수신 동의</label>
	                                </div>
	                            </div>
	                            <div class="col-md-2 form-group">
	                                <div class="adReceive">
	                                    <input type="checkbox" id="adEmailReceive" name="adReceive" onclick="checkSelectAll();">
	                                    <label for="adEmailReceive">이메일 수신</label>
	                                </div>
	                            </div>    
	                            <div class="col-md-2 form-group">
	                                <div class="adReceive">
	                                    <input type="checkbox" id="adKakaoReceive" name="adReceive" onclick="checkSelectAll();">
	                                    <label for="adKakaoReceive">카카오톡 수신</label>
	                                </div>
	                            </div>
	                            <div class="col-md-2 form-group">
	                                <div class="adReceive">
	                                    <input type="checkbox" id="adSmsReceive" name="adReceive" onclick="checkSelectAll();">
	                                    <label for="adSmsReceive">SMS 수신 동의</label>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row" style="height: 40px;"></div>
	                        <div class="row mb-5">
							   <div class="col-2">
							      <button type="button" class="genric-btn danger" id="regFormCancel" data-toggle="modal" data-target="#regCancelModal">
							      	<i class="fa-solid fa-xmark"></i> 취소
							      </button>
							   </div>
							   <div class="col-2 offset-8">
							     <button type="button" class="genric-btn primary" id="regFormSubmit" onclick="regSubmit();">
							    	 <i class="fa-solid fa-plus"></i> 가입
							     </button>
							   </div>
							</div>
                        </form>
                    </div>
                </div>
             </div>
		</section>
	</form>
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
	<div class="modal fade" id="regCancelModal" tabindex="-1" aria-labelledby="regCancelModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="regCancelModalLabel">돌아가시겠습니까?</h5>
	        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
	      </div>
	      <div class="modal-body">
	        <span>지금까지 기입한 정보가 전부 초기화 됩니다. 돌아가시겠습니까?</span>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
	        <button type="button" class="genric-btn danger" onclick="regCancel();">취소</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- end modal area -->
	
	<script type="text/javascript">
		function selectEmail() {
			document.memberRegForm.regEmailLast.value = document.memberRegForm.regEmailLastSelect.value
			
		}
		function regCancel() {
			location.href='loginForm.html';
		}
		
		function regSubmit() {
			document.getElementById("memberRegForm").submit();
		}
		// 함수는 아이디와 같은 이름으로 하면 안됩니다. 바보야
		function regPasswordCk(){
			var password = document.getElementById("regPassword");
			var passwordCheck = document.getElementById("regPasswordCheck")
		 	var warning = document.getElementById('checkWord')
			if(password.value != passwordCheck.value) {
			  warning.style.display="block";
		  } else {
			  warning.style.display="none";
		  }
		}
		
		function checkSelectAll()  {

			const checkboxes = document.querySelectorAll('input[name="adReceive"]');

			const checked = document.querySelectorAll('input[name="adReceive"]:checked');

			const selectAll = document.querySelector('input[name="adAllReceive"]');
			  
			if(checkboxes.length === checked.length)  {
			  selectAll.checked = true;
			}else {
			  selectAll.checked = false;
			}
		}
		function selectAll(selectAll)  {
			const checkboxes = document.getElementsByName('adReceive');
			
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