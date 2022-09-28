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


	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>로그인/회원가입</h1>
					<nav class="d-flex align-items-center">
						<a href="main.html">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="loginForm.html">로그인/회원가입</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="/resources/template/karma/img/login.jpg" alt="">
						<div class="hover">
							<h4>이 사이트에 처음 오셨나요?</h4>
							<p>이 사이트는 karma 템플릿을 이용한 프로젝트로 이용하시려면 회원가입 바랍니다.</p>
							<a class="primary-btn" href="/member/memberRegForm">회원 가입</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>로그인 해주세요</h3>
						<form class="row login_form" method="post" id="loginForm" name="loginForm" novalidate="novalidate" onsubmit="return false">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="id" name="id" value="<c:out value="${dto.id }" />" placeholder="아이디" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디'">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password" name="password" value="<c:out value="${dto.password }" />" placeholder="비밀번호" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'">
							</div>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="autoLogin" name="autoLogin">
									<label for="loginMaintain">로그인 상태 유지</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="button" id="loginBtn" name="loginBtn" class="primary-btn">로그인</button>
								<a href="#findIdPassword" data-toggle="modal" data-target="#findIdPassword" style="margin-top: 10px; margin-bottom: 10px;">아이디/비밀번호 찾기</a>
								<button type="submit" value="kakao" class="primary-btn genric-btn warning">
									<i class="fa-solid fa-comment"></i> 카카오
								</button>
								<button type="submit" value="kakao" class="primary-btn genric-btn naver">
									<i class="fa-solid fa-n"></i> 네이버
								</button>
								<button type="submit" value="kakao" class="primary-btn genric-btn danger">
									<i class="fa-brands fa-google"></i> 구글
								</button>
								<button type="submit" value="kakao" class="primary-btn genric-btn facebook">
									<i class="fa-brands fa-square-facebook"></i> 페이스북
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	
	<!-- start modal area -->
	<section class="product_description_area" style="margin-top: 0px; padding-bottom: 0px;">
		<div class="modal fade" id="findIdPassword" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<ul class="nav nav-tabs col-lg-12" id="myTab" role="tablist">
							<li class="col-lg-10">
								<h3 style="margin-top: 10px; margin-bottom: 10px; text-align: left;">아이디 / 비밀번호 찾기</h3>
							</li>
							<li>
								<button type="button" class="border border-0" style="vertical-align: middle; background-color: #E8F0F2;" data-dismiss="modal" aria-label="Close"><i class="fa-solid fa-x fa-2x"></i></button>
							</li>
							<li class="nav-item col-lg-5" style="margin:0px;">
								<a class="nav-link active" id="home-tab" data-toggle="tab" href="#findId" role="tab" aria-controls="findId" aria-selected="true">아이디 찾기</a>
							</li>
							<li class="nav-item col-lg-5">
								<a class="nav-link" id="writer-tab" data-toggle="tab" href="#findPassword" role="tab" aria-controls="findPassword" aria-selected="false">비밀번호 찾기</a>
							</li>
						</ul>
					</div>
					<div class="modal-body">
						<form name="findIdPasswordForm" method="get" action="loginForm" id="findIdPasswordForm">
							<div class="tab-content" id="findIDPasswordContent">
								<div class="tab-pane fade show active" id="findId" role="tabpanel" aria-labelledby="findIdTab">
									<h5>등록된 휴대폰 번호로 찾기</h5>
									<input type="text" class="form-control" id="findIdNumberName" name="findIdNumberName" placeholder="이름">
									<input type="text" class="form-control" id="findIdNumberNumber" name="findIdNumberNumber" placeholder="전화번호 ex)01012345678">
									<div style="height: 30px;"></div>
									<h5>등록된 이메일로 찾기</h5>
									<input type="text" class="form-control" id="findIdEmailName" name="findIdEmailName" placeholder="이름">
									<div class="row">
			                            <div class="col-md-4 form-group">
			                                <input type="text" class="form-control" id="findIdEmailFirst" name="findIdEmailFirst" placeholder="이메일*">
			                            </div>
			                            <span class="align-self-center" style="margin-bottom: 20px"> @ </span>
			                            <div class="col-md-4 form-group">
			                                <input type="text" class="form-control" id="findIdEmailLast" name="findIdEmailLast" placeholder="직접입력">
			                            </div>
			                            <div class="col-md-3 form-group" style="padding-left: 12px;">
			                                <select class="country_select" id="findIdEmailLastSelect" name="findIdEmailLastSelect" style="width: 76px;" onchange="idSelectEmail();">
			                                    <option value="">직접입력</option>
			                                    <option value="naver.com">네이버</option>
			                                    <option value="gmail.com">구글</option>
			                                    <option value="kakao.com">카카오</option>
			                                </select>
			                            </div>
		                            </div>
								</div>
								<div class="tab-pane fade" id="findPassword" role="tabpanel" aria-labelledby="findPasswordTab">
									<h5>등록된 휴대폰 번호로 찾기</h5>
									<input type="text" class="form-control" id="FindPhoneId" name="FindPhoneId" placeholder="아이디">
									<input type="text" class="form-control" id="FindPhonepassword" name="password" placeholder="이름">
									<input type="text" class="form-control" id="number" name="number" placeholder="전화번호 ex)01012345678">
									<div style="height: 30px;"></div>
									<h5>등록된 이메일로 찾기</h5>
									<input type="text" class="form-control" id="findPasswordEmailId" name="findPasswordEmailId" placeholder="아이디">
									<input type="text" class="form-control" id="findPasswordEmailName" name="findPasswordEmailName" placeholder="이름">
									<div class="row">
			                            <div class="col-md-4">
			                                <input type="text" class="form-control" id="findPasswordEmailFirst" name="findPasswordEmailFirst" placeholder="이메일*">
			                            </div>
			                            <span class="align-self-center" style="margin-bottom: 20px"> @ </span>
			                            <div class="col-md-4">
			                                <input type="text" class="form-control" id="findPasswordEmailLast" name="findPasswordEmailLast" placeholder="직접입력">
			                            </div>
			                            <div class="col-md-3" style="padding-left: 12px;">
			                                <select class="country_select" id="findPasswordEmailLastSelect" name="findPasswordEmailLastSelect" onchange="passwordSelectEmail();">
			                                    <option value="">직접입력</option>
			                                    <option value="naver.com">네이버</option>
			                                    <option value="gmail.com">구글</option>
			                                    <option value="kakao.com">카카오</option>
			                                </select>
			                            </div>
		                            </div>
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary">확인</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end modal area -->
	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script>
	var URL_MAIN = "/";
	
	$("#loginBtn").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "password" : $("#password").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
			,success: function(response) {
				if(response.rt == "success") {
					/* if(response.changePwd == "true") {
						location.href = URL_CHANGE_PWD_FORM;
					} else {
						location.href = URL_MAIN;
					} */
					location.href = URL_MAIN;
					
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
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