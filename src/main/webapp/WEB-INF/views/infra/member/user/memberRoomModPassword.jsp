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
					<h1>마이룸</h1>
					<nav class="d-flex align-items-center">
						<a href="main.html">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="memberRoomForm.html">마이룸<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">비밀번호변경</a>
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
                	<form name="memberModPasswordForm" method="get" action="/resources/memberRoomForm.html" id="memberModPasswordForm">
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
	                    <h3><b>비밀번호 변경</b></h3>
						<div style="height: 10px;"></div>
	                    <table class="table col-lg-12">
	                    	<tr>
	                    		<td class="col-lg-2">
	                    			<span>현재 비밀번호</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="nowPassword" name="nowPassword">
	                    		</td>
	                    		<td>
	                    		</td>
	                    		<td>
	                    		</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="col-lg-2">
	                    			<span>새 비밀번호</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="password" class="form-control" id="modPassword" name="modPassword" onkeyup="securityCheck();">
	                    		</td>
	                    		<td class="col-lg-2">
	                    			<span>비밀번호 안전도 <a id="passwordSecurity" style="color: red">낮음</a></span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<span>8~15자리의 영문+숫자+특수문자 조합이 가장 안전합니다.</span>
	                    		</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="col-lg-2">
	                    			<span>새 비밀번호 확인</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="password" class="form-control" id="checkModPassword" name="checkModPassword">
	                    		</td>
	                    		</td>
	                    		<td>
	                    		</td>
	                    		<td>
	                    		</td>
	                    	</tr>
	                    	<tr>
	                    		</td>
	                    		<td>
	                    		</td>
	                    		<td>
	                    		</td>
		                    	<td>
		                    	</td>
		                    	<td>
		                    	</td>
	                    	</tr>
	                    </table>
                   		<button type="button" class="genric-btn primary col-lg-2" style="float:right;" id="modPasswordFormSubmit" onclick="modPasswordSubmit();"> 
                   			<i class="fa-solid fa-pencil"></i> 수정
                		</button>
                    </form>
                    <div style="height: 80px;"></div>
                   	<div class="border">
                   		<div style="background-color: #F0F0F0;">
                   			<h4 style="padding: 10px;"><b><i class="fa-solid fa-circle-exclamation"></i></b> 비밀번호 변경 관련 안내 </h4>
                   		</div>
                   		<div>
                   			<ul style="margin: 10px; padding:10px;">
                   				<li>
                   					<h5>비밀번호 사용이 불가한 경우</h5>
                   				</li>
                   				<li>
	                    			<ol>
	                    				<li>8자리 미만 15자리 초과될 경우</li>
	                    				<li>아이디와 동일하게 설정될 경우</li>
	                    				<li>현재 사용중인 비밀번호와 동일한 경우</li>
	                    				<li>공백이 포함된 경우</li>
	                    			</ol>
                    			</li>
                    			<li>
                    				<h5>비밀번호 생성방법</h5>
                    			</li>
                    			<li>
                    				<ol>
                    					<li>공백없이 8~15자리의 영문(대/소문자 구분), 숫자, 특수문자를 포함해서 생성하세요.</li>
										<li>영문+숫자+특수문자 중 3개 조합 8자리 이상 또는 2개 조합 10자리 이상 (단, 최대 15자리)</li>
										<li>영문+숫자+특수문자가 조합된 경우가 가장 안전한 비밀번호 입니다.</li>
										<li>연속된 숫자나 문자, 개인정보가 포함된 비밀번호의 경우 노출 위험이 있으니 사용을 삼가해주세요.</li>
										<li>사용가능한 특수문자는 아래와 같습니다.
										    <br>~ ` ! @ # $ % ^ & * ( ) _ - + = | { [ } ] : ; < , > . ? / " ' \</li>
                    				</ol>
                    			</li>
                    			<div style="height: 20px;"></div>
                    			<li>
                    				<h5><b>가장 최적의 비밀번호 조합은 13~15자리의 영문+숫자+특수문자를 조합</b>하였을 때이며,
                    				<br> 비밀번호 안전도가 가장 높습니다.</h5>
                    			</li>
                   			</ul>
                   		</div>
                    </div>
                    <div style="height: 50px;"></div>
                </div>
            </div>
        </div>
    </section>
	<!-- end product Area -->
	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	<script type="text/javascript">
	
	function modPasswordSubmit() {
		document.getElementById("memberModPasswordForm").submit();
	}
	
	function securityCheck(){
		
		var res = null;
		var warning = document.getElementById("passwordSecurity");
		
		if (modPassword.length === 0){
			return;
		} else if(modPassword.length < 5 || modPassword.length > 16){
			warning.value = "사용불가";
			return;
		}
		
		var security = new Array();
		security.push("[A-Z]");
		security.push("[a-z]");
		security.push("[0-9]");
		security.push("[!@#$%^&*()]");
		
		var cnt = 0;
		
		for(var i = 0; i < security.length; i++){
			if(new ModExp(security[i]).test(modPassword)){
				cnt++;
			}
		}
		
		switch(cnt){
		case 0:
		case 1:
		case 2:
			waring.value = "사용불가";
			break;
		case 3:
			waring.value = "적정";
			waring.style.color="orange";
			break;
		case 4:
			waring.value = "높음";
			waring.style.color="green";
			break;
		}
		
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